import 'package:auto_route/auto_route.dart';
import '../../../common/utils/error_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/categories_bloc.dart';

class AddCategoryModal extends StatefulWidget {
  const AddCategoryModal({super.key});

  static Future<void> show(BuildContext context) => showModalBottomSheet(
        context: context,
        useSafeArea: true,
        shape: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
          borderSide: BorderSide.none,
        ),
        clipBehavior: Clip.antiAlias,
        builder: (_) => BlocProvider.value(
          value: context.read<CategoriesBloc>(),
          child: const AddCategoryModal(),
        ),
      );

  @override
  State<AddCategoryModal> createState() => _AddCategoryModalState();
}

class _AddCategoryModalState extends State<AddCategoryModal> {
  late final TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController();
    super.initState();
  }

  void _onPress() {
    if (_controller.text.isEmpty) return ErrorUtil.showSnackBar(context, 'Название категории не может быть пустым');
    if (_controller.text.trim().length < 3) return ErrorUtil.showSnackBar(context, 'Название категории не может быть меньше 3 символов');
    context.read<CategoriesBloc>().add(CategoriesEvent.create(name: _controller.text));
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<CategoriesBloc, CategoriesState>(
      listener: (context, state) {
        state.mapOrNull(
          added: (_) {
            _controller.clear();
            context.router.pop();
          },
        );
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Добавление категории'),
          titleSpacing: 0,
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextField(
                  controller: _controller,
                  onTapOutside: (_) => FocusScope.of(context).unfocus(),
                  decoration: const InputDecoration(
                    hintText: 'Название',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                    ),
                  ).applyDefaults(Theme.of(context).inputDecorationTheme),
                  onSubmitted: (_) => _onPress(),
                ),
                const SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                  onPressed: _onPress,
                  child: const Text('Добавить'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
