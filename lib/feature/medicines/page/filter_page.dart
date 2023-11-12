import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../common/router/app_router.gr.dart';
import '../../../common/widget/value_listenable_text_field.dart';
import '../../categories/model/category.dart';
import '../../symptoms/model/symptom.dart';
import '../model/filter.dart';

@RoutePage()
class FilterPage extends StatelessWidget {
  const FilterPage({super.key, this.initialFilter});

  final Filter? initialFilter;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Фильтры'),
      ),
      body: SearchPageBody(
        initialFilter: initialFilter,
      ),
    );
  }
}

class SearchPageBody extends StatefulWidget {
  const SearchPageBody({
    super.key,
    this.initialFilter,
  });

  final Filter? initialFilter;

  @override
  State<SearchPageBody> createState() => _SearchPageBodyState();
}

class _SearchPageBodyState extends State<SearchPageBody> {
  late Filter _filter;

  final TextEditingController _searchController = TextEditingController();

  final ValueNotifier<String?> _searchError = ValueNotifier(null);

  final ValueNotifier<bool> _validNotifier = ValueNotifier(false);

  late final Listenable _observer;

  late final List<TextEditingController> controllers = [_searchController];

  @override
  void initState() {
    super.initState();
    _filter = Filter.empty;
    _searchController.text = widget.initialFilter?.search ?? '';
    _observer = Listenable.merge(controllers)..addListener(_onChanged);
    _onChanged();
  }

  void _onChanged() {
    if (!mounted) return;

    _filter = _filter.copyWith(search: _searchController.text);
    _validNotifier.value = _validate();
  }

  void _onCategoryChanged(Category? category) {
    if (!mounted) return;
    setState(() => _filter = _filter.copyWith(category: category));
  }

  late final List<String? Function(Filter data)> _validators = <String? Function(Filter data)>[
    (data) => _searchError.value = data.isSearchValid(),
  ];

  bool _validate() {
    for (var validator in _validators) {
      if (validator(_filter) != null) return false;
    }

    return true;
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

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ValueListenableTextField(
            errorNotifier: _searchError,
            controller: _searchController,
            disabled: false,
            labelText: 'Поиск',
          ),
          const SizedBox(height: 16),
          ListTile(
            title: _filter.category == null ? const Text('Выберите категорию') : Text(_filter.category!.name),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () async {
              // if (isProcessing) return;
              final category = await context.pushRoute<Category?>(ChooseCategoryRoute(category: _filter.category));
              _onCategoryChanged(category);
            },
          ),
          const SizedBox(height: 8),
          ListTile(
            title: const Text('Выберите симптомы'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () async {
              // if (isProcessing) return;
              final symptoms = await context.pushRoute<List<Symptom>>(ChooseSymptomsRoute(initialSymptoms: _filter.symptoms));
              setState(() => _filter = _filter.copyWith(symptoms: symptoms));
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Wrap(
              spacing: 8,
              children: [
                for (var symptom in _filter.symptoms)
                  Chip(
                    label: Text(symptom.name),
                    onDeleted: () => setState(
                      () => _filter = _filter.copyWith(
                        symptoms: [..._filter.symptoms]..remove(symptom),
                      ),
                    ),
                  ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ValueListenableBuilder<bool>(
              valueListenable: _validNotifier,
              builder: (context, valid, child) => ElevatedButton(
                onPressed: valid ? () => context.pushRoute(ResultRoute(filter: _filter)) : null,
                child: const Text('Поиск'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
