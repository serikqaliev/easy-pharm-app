import 'package:flutter/material.dart';

Future<void> showDeleteDialog(
  BuildContext context, {
  required VoidCallback onConfirm,
  String title = 'Удалить?',
  String message = 'Вы уверены, что хотите удалить?',
}) {
  return showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text(title),
      actions: [
        TextButton(
          onPressed: () {
            onConfirm();
            Navigator.pop(context);
          },
          style: TextButton.styleFrom(
            foregroundColor: Colors.red,
          ),
          child: const Text('Удалить'),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Отмена'),
        ),
      ],
    ),
  );
}
