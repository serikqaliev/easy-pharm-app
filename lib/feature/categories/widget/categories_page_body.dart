import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/router/app_router.gr.dart';
import '../../../common/utils/error_util.dart';
import '../../../common/widget/empty_list.dart';
import '../../medicines/model/filter.dart';
import '../bloc/categories_bloc.dart';
import 'categories_list_view.dart';

class CategoriesPageBody extends StatefulWidget {
  const CategoriesPageBody({super.key});

  @override
  State<CategoriesPageBody> createState() => _CategoriesPageBodyState();
}

class _CategoriesPageBodyState extends State<CategoriesPageBody> {
  Future<void> _onRefresh() async {
    context.read<CategoriesBloc>().add(const CategoriesEvent.init());
    await context.read<CategoriesBloc>().stream.firstWhere((state) => !state.isIdling);
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CategoriesBloc, CategoriesState>(
      listener: (context, state) {
        if (state.hasError) return ErrorUtil.showSnackBar(context, state.error!);
      },
      builder: (context, state) {
        if (state.isProcessing) return const Center(child: CircularProgressIndicator.adaptive());

        if (state.categories.isEmpty) return EmptyList(onRefresh: _onRefresh);

        return CategoriesListView(
          onTap: (category) => context.pushRoute(ResultRoute(filter: Filter(category: category))),
        );
      },
    );
  }
}
