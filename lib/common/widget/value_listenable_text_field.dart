import 'package:flutter/material.dart';

class ValueListenableTextField extends StatelessWidget {
  const ValueListenableTextField({
    super.key,
    required this.errorNotifier,
    required this.controller,
    required this.disabled,
    required this.labelText,
    this.padding,
  });

  final bool disabled;
  final ValueNotifier<String?> errorNotifier;
  final TextEditingController controller;
  final String labelText;

  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.symmetric(horizontal: 16),
      child: ValueListenableBuilder<String?>(
        valueListenable: errorNotifier,
        builder: (context, error, child) => TextField(
          enabled: !disabled,
          controller: controller,
          minLines: 1,
          maxLines: 5,
          decoration: InputDecoration(
            hintText: labelText,
            errorText: error,
          ).applyDefaults(Theme.of(context).inputDecorationTheme),
          onTapOutside: (_) => FocusScope.of(context).unfocus(),
        ),
      ),
    );
  }
}
