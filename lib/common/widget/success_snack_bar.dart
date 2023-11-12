import 'package:flutter/material.dart';

abstract class SuccessSnackBar {
  static void showSnackBar(BuildContext context, String message) => ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(message),
          backgroundColor: Colors.blue,
        ),
      );
}
