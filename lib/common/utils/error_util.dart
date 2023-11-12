import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart' show BuildContext, Colors, ScaffoldMessenger, SnackBar, Text;
import 'package:l/l.dart';

import 'platform/error_util_vm.dart';

/// Error util.
sealed class ErrorUtil {
  /// Log the error to the console and to Crashlytics.
  static Future<void> logError(
    Object exception,
    StackTrace stackTrace, {
    String? hint,
    bool fatal = false,
  }) async {
    try {
      if (exception is String) {
        return await logMessage(
          exception,
          stackTrace: stackTrace,
          hint: hint,
          warning: true,
        );
      }
      $captureException(exception, stackTrace, hint, fatal).ignore();
      l.e(exception, stackTrace);
    } on Object catch (error, stackTrace) {
      l.e(
        'Error while logging error "$error" inside ErrorUtil.logError',
        stackTrace,
      );
    }
  }

  /// Logs a message to the console and to Crashlytics.
  static Future<void> logMessage(
    String message, {
    StackTrace? stackTrace,
    String? hint,
    bool warning = false,
  }) async {
    try {
      l.e(message, stackTrace ?? StackTrace.current);
      $captureMessage(message, stackTrace, hint, warning).ignore();
    } on Object catch (error, stackTrace) {
      l.e(
        'Error while logging error "$error" inside ErrorUtil.logMessage',
        stackTrace,
      );
    }
  }

  /// Rethrows the error with the stack trace.
  static Never throwWithStackTrace(Object error, StackTrace stackTrace) => Error.throwWithStackTrace(error, stackTrace);

  // Also we can add current localization to this method
  static String formatMessage(
    Object error, [
    String fallback = 'An error has occurred',
  ]) =>
      switch (error) {
        String e => e,
        FormatException _ => 'Invalid format',
        TimeoutException _ => 'Timeout exceeded',
        UnimplementedError _ => 'Not implemented yet',
        UnsupportedError _ => 'Unsupported operation',
        FileSystemException _ => 'File system error',
        AssertionError _ => 'Assertion error',
        Error _ => 'An error has occurred',
        Exception _ => 'An exception has occurred',
        _ => fallback,
      };

  /// Shows a error snackbar with the given message.
  static void showSnackBar(BuildContext context, Object message) => ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(formatMessage(message)),
          backgroundColor: Colors.red,
        ),
      );
}
