import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/router/app_router.gr.dart';
import '../../../common/widget/value_listenable_text_field.dart';
import '../../categories/model/category.dart';
import '../../symptoms/model/symptom.dart';
import '../bloc/medicines/medicines_bloc.dart';
import '../model/medicine_dto.dart';
import 'medicine_image.dart';

class CreateMedicineForm extends StatefulWidget {
  const CreateMedicineForm({super.key});

  @override
  State<CreateMedicineForm> createState() => _CreateMedicineFormState();
}

class _CreateMedicineFormState extends State<CreateMedicineForm> {
  late MedicineData _medicineDto;
  File? _image;

  final TextEditingController _nameController = TextEditingController(),
      _descriptionController = TextEditingController(),
      _priceController = TextEditingController();

  final ValueNotifier<String?> _nameError = ValueNotifier(null), _descriptionError = ValueNotifier(null), _priceError = ValueNotifier(null);

  final ValueNotifier<bool> _validNotifier = ValueNotifier(false);

  late final Listenable _observer;

  late final List<TextEditingController> controllers = [
    _nameController,
    _descriptionController,
    _priceController,
  ];

  @override
  void initState() {
    super.initState();
    _medicineDto = MedicineData.empty();
    _observer = Listenable.merge([_nameController, _descriptionController, _priceController])..addListener(_onChanged);
    _onChanged();
  }

  void _onChanged() {
    if (!mounted) return;

    _medicineDto = _medicineDto.copyWith(
      name: _nameController.text,
      description: _descriptionController.text,
      price: _priceController.text,
    );
    _validNotifier.value = _validate();
  }

  void _onCategoryChanged(Category? category) {
    if (!mounted) return;
    setState(() => _medicineDto = _medicineDto.copyWith(category: category));
  }

  late final List<String? Function(MedicineData data)> _validators = <String? Function(MedicineData data)>[
    (data) => _nameError.value = data.isValidName(),
    (data) => _descriptionError.value = data.isValidDescription(),
    (data) => _priceError.value = data.isValidPrice(),
  ];

  bool _validate() {
    for (var validator in _validators) {
      if (validator(_medicineDto) != null) return false;
    }

    return true;
  }

  @override
  Widget build(BuildContext context) {
    return BlocSelector<MedicinesBloc, MedicinesState, bool>(
      selector: (state) => state.isProcessing,
      builder: (context, isProcessing) {
        return SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              MedicineImage(
                image: _image,
                onChanged: (image) => setState(() => _image = image),
              ),
              const SizedBox(height: 16),
              ValueListenableTextField(
                errorNotifier: _nameError,
                controller: _nameController,
                disabled: isProcessing,
                labelText: 'Название',
              ),
              const SizedBox(height: 16),
              ValueListenableTextField(
                errorNotifier: _descriptionError,
                controller: _descriptionController,
                disabled: isProcessing,
                labelText: 'Описание',
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: ValueListenableBuilder<String?>(
                  valueListenable: _priceError,
                  builder: (context, error, child) => TextField(
                    controller: _priceController,
                    minLines: 1,
                    maxLines: 5,
                    enabled: !isProcessing,
                    decoration: InputDecoration(
                      hintText: 'Цена',
                      suffixIcon: const Padding(padding: EdgeInsets.only(right: 16), child: Text('₸ ')),
                      suffixIconConstraints: const BoxConstraints(minWidth: 0, minHeight: 0),
                      errorText: error,
                    ).applyDefaults(Theme.of(context).inputDecorationTheme),
                    onTapOutside: (_) => FocusScope.of(context).unfocus(),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              ListTile(
                title: _medicineDto.category == null ? const Text('Выберите категорию') : Text(_medicineDto.category!.name),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () async {
                  if (isProcessing) return;
                  final category = await context.pushRoute<Category?>(ChooseCategoryRoute(category: _medicineDto.category));
                  _onCategoryChanged(category);
                },
              ),
              ListTile(
                title: const Text('Выберите симптомы'),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () async {
                  if (isProcessing) return;
                  final symptoms = await context.pushRoute<List<Symptom>>(ChooseSymptomsRoute(initialSymptoms: _medicineDto.symptoms));
                  setState(() => _medicineDto = _medicineDto.copyWith(symptoms: symptoms));
                },
              ),
              Wrap(
                spacing: 8,
                children: [
                  for (var symptom in _medicineDto.symptoms)
                    Chip(
                      label: Text(symptom.name),
                      onDeleted: () => setState(
                        () => _medicineDto = _medicineDto.copyWith(
                          symptoms: [..._medicineDto.symptoms]..remove(symptom),
                        ),
                      ),
                    ),
                ],
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: ValueListenableBuilder<bool>(
                  valueListenable: _validNotifier,
                  builder: (context, valid, child) => ElevatedButton(
                    onPressed: valid && !isProcessing
                        ? () => context.read<MedicinesBloc>().add(
                              MedicinesEvent.create(medicine: _medicineDto, medicineImage: _image),
                            )
                        : null,
                    child: const Text('Создать'),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    _observer.removeListener(_onChanged);
    for (var controller in controllers) {
      controller.dispose();
    }
    _validNotifier.dispose();
  }
}
