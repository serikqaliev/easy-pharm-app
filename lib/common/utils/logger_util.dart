import 'package:flutter/cupertino.dart';
import 'package:l/l.dart';
import 'package:stack_trace/stack_trace.dart';

abstract class LoggerUtil {
  /// Formats the log message.
  static Object messageFormatting(
    Object message,
    LogLevel logLevel,
    DateTime now,
  ) =>
      '${logLevel.emoji} ${timeFormat(now)} $message';

  /// Formats the time.
  static String timeFormat(DateTime time) =>
      '${time.hour}:${time.minute.toString().padLeft(2, '0')}:${time.second.toString().padLeft(2, '0')}.${time.millisecond.toString().padLeft(3, '0')}';

  /// Formats the error.
  static String _formatError(
    String type,
    String error,
    StackTrace? stackTrace,
  ) {
    final trace = stackTrace ?? StackTrace.current;

    final buffer = StringBuffer(type)
      ..write(' error: ')
      ..writeln(error)
      ..writeln('Stack trace:')
      ..write(Trace.from(trace).terse);

    return buffer.toString();
  }

  /// Logs the Flutter error.
  static void logFlutterError(
    FlutterErrorDetails details,
  ) {
    final stack = details.stack;
    l.e(_formatError('Flutter', details.exceptionAsString(), stack), stack);
  }
}

extension on LogLevel {
  String get emoji => maybeWhen(
        shout: () => '🚨',
        error: () => '❌',
        warning: () => '⚠️',
        info: () => 'ℹ️',
        debug: () => '🐞',
        orElse: () => '🤷‍♂️',
      );
}
