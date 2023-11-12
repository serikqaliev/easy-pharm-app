import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../categories/bloc/categories_bloc.dart';
import '../../categories/model/category.dart';
import '../../categories/widget/categories_list_view.dart';
import '../../dependencies/widget/dependencies_scope.dart';

@RoutePage<Category?>()
class ChooseCategoryPage extends StatelessWidget {
  const ChooseCategoryPage({
    super.key,
    this.category,
  });

  final Category? category;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CategoriesBloc(
        repository: DependenciesScope.of(context).categroiesRepository,
      )..add(const CategoriesEvent.init()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Выберите категорию'),
        ),
        body: ChooseCategoryPageBody(
          category: category,
        ),
      ),
    );
  }
}

class ChooseCategoryPageBody extends StatelessWidget {
  const ChooseCategoryPageBody({
    super.key,
    required this.category,
  });

  final Category? category;

  void _onChangeCategory(BuildContext context, Category? category) {
    context.router.pop(category);
  }

  @override
  Widget build(BuildContext context) {
    return CategoriesListView(
      onTap: (category) => _onChangeCategory(context, category),
      trailingBuilder: (context, category) {
        final choosed = this.category == category;

        return Checkbox.adaptive(
          value: choosed,
          onChanged: (value) => _onChangeCategory(context, value == true ? category : null),
        );
      },
    );
  }
}
