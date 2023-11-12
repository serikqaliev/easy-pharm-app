import 'package:auto_route/auto_route.dart';
import '../widget/add_category_modal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/router/app_router.gr.dart';
import '../../authentication/widget/authentication_scope.dart';
import '../../dependencies/widget/dependencies_scope.dart';
import '../bloc/categories_bloc.dart';
import '../widget/categories_page_body.dart';

@RoutePage()
class CatalogPage extends StatelessWidget {
  const CatalogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: false,
      create: (context) => CategoriesBloc(
        repository: DependenciesScope.of(context).categroiesRepository,
      )..add(const CategoriesEvent.init()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Каталог'),
          actions: [
            if (AuthenticationScope.userOf(context).isStaff) const AddCategoryButton(),
            IconButton(
              onPressed: () => context.pushRoute(FilterRoute()),
              icon: const Icon(Icons.tune_outlined),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          label: const Text('Поиск'),
          onPressed: () => context.router.pushNamed('/search'),
        ),
        body: const CategoriesPageBody(),
      ),
    );
  }
}

class AddCategoryButton extends StatelessWidget {
  const AddCategoryButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => AddCategoryModal.show(context),
      icon: const Icon(Icons.add),
    );
  }
}
