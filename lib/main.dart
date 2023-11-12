import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:l/l.dart';

import 'common/utils/logger_util.dart';
import 'common/widget/app.dart';
import 'feature/dependencies/initialization/initialization.dart';
import 'feature/dependencies/widget/dependencies_scope.dart';
import 'feature/dependencies/widget/splash_screen.dart';

void main() => l.capture<void>(
      () => runZonedGuarded<void>(
        () {
          final initialization = InitializationExecutor();
          runApp(
            DependenciesScope(
              initialization: initialization(),
              splashScreen: InitializationSplashScreen(
                progress: initialization,
              ),
              child: const App(),
            ),
          );
        },
        l.e,
      ),
      const LogOptions(
        handlePrint: true,
        messageFormatting: LoggerUtil.messageFormatting,
        outputInRelease: false,
        printColors: true,
      ),
    );
