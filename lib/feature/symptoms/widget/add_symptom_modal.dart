import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../common/widget/value_listenable_text_field.dart';
import '../model/symptom_dto.dart';

class AddSymptomModal extends StatefulWidget {
  const AddSymptomModal({super.key});

  static Future<SymptomDto?> show(BuildContext context) => showModalBottomSheet<SymptomDto>(
        context: context,
        useSafeArea: true,
        shape: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
          borderSide: BorderSide.none,
        ),
        clipBehavior: Clip.antiAlias,
        builder: (_) => const AddSymptomModal(),
      );

  @override
  State<AddSymptomModal> createState() => _AddSymptomModalState();
}

class _AddSymptomModalState extends State<AddSymptomModal> {
  late SymptomDto _symptomDto;

  late final TextEditingController _nameController = TextEditingController(), _descriptionController = TextEditingController();

  final ValueNotifier<String?> _nameError = ValueNotifier(null), _descriptionError = ValueNotifier(null);

  final ValueNotifier<bool> _validNotifier = ValueNotifier(false);

  late final Listenable _observer;

  late final List<TextEditingController> controllers = [
    _nameController,
    _descriptionController,
  ];

  @override
  void initState() {
    super.initState();
    _symptomDto = SymptomDto.empty();
    _observer = Listenable.merge(controllers)..addListener(_onChanged);
    _onChanged();
  }

  void _onChanged() {
    if (!mounted) return;

    _symptomDto = _symptomDto.copyWith(
      name: _nameController.text,
      description: _descriptionController.text,
    );
    _validNotifier.value = _validate();
  }

  late final List<String? Function(SymptomDto data)> _validators = <String? Function(SymptomDto data)>[
    (data) => _nameError.value = data.isNameValid(),
    (data) => _descriptionError.value = data.isDescriptionValid(),
  ];

  @override
  void dispose() {
    super.dispose();
    _observer.removeListener(_onChanged);
    for (var controller in controllers) {
      controller.dispose();
    }
    _validNotifier.dispose();
  }

  bool _validate() {
    for (var validator in _validators) {
      if (validator(_symptomDto) != null) return false;
    }

    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Добавление симптома'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ValueListenableTextField(
              errorNotifier: _nameError,
              controller: _nameController,
              disabled: false,
              labelText: 'Название',
            ),
            const SizedBox(height: 16),
            ValueListenableTextField(
              errorNotifier: _descriptionError,
              controller: _descriptionController,
              disabled: false,
              labelText: 'Описание',
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ValueListenableBuilder<bool>(
                valueListenable: _validNotifier,
                builder: (context, valid, child) => ElevatedButton(
                  onPressed: valid ? () => context.popRoute<SymptomDto>(_symptomDto) : null,
                  child: const Text('Создать'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
