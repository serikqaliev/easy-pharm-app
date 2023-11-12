import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../common/router/app_router.gr.dart';
import '../../medicines/model/filter.dart';

class SearchField extends StatefulWidget {
  const SearchField({
    super.key,
    this.onTap,
  });

  final VoidCallback? onTap;

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  late final TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      onTap: widget.onTap,
      controller: _controller,
      onTapOutside: (_) => FocusScope.of(context).unfocus(),
      decoration: const InputDecoration(
        hintText: 'Поиск',
        prefixIcon: Icon(Icons.search),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
      ).applyDefaults(Theme.of(context).inputDecorationTheme),
      onSubmitted: (value) => AutoRouter.of(context).push(
        ResultRoute(filter: Filter(search: _controller.text)),
      ),
    );
  }
}
