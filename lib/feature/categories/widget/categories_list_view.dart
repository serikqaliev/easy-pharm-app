import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/categories_bloc.dart';
import '../model/category.dart';
import 'category_tile.dart';

class CategoriesListView extends StatefulWidget {
  const CategoriesListView({super.key, this.trailingBuilder, this.onTap});

  final Widget Function(BuildContext context, Category category)? trailingBuilder;
  final Function(Category category)? onTap;

  @override
  State<CategoriesListView> createState() => _CategoriesListViewState();
}

class _CategoriesListViewState extends State<CategoriesListView> {
  late final ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  Future<void> _onRefresh() async {
    context.read<CategoriesBloc>().add(const CategoriesEvent.init());
    await context.read<CategoriesBloc>().stream.firstWhere((state) => !state.isIdling);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoriesBloc, CategoriesState>(
      builder: (context, state) {
        return Scrollbar(
          controller: _scrollController,
          child: RefreshIndicator.adaptive(
            onRefresh: _onRefresh,
            child: ListView.separated(
              physics: const AlwaysScrollableScrollPhysics(),
              controller: _scrollController,
              padding: const EdgeInsets.all(16),
              itemBuilder: (context, index) => CategoryTile(
                category: state.categories[index],
                onTap: () => widget.onTap?.call(state.categories[index]),
                trailing: widget.trailingBuilder?.call(context, state.categories[index]),
              ),
              separatorBuilder: (context, index) => const SizedBox(height: 8),
              itemCount: state.categories.length,
            ),
          ),
        );
      },
    );
  }
}
