import 'package:flutter/material.dart';

import '../../feature/authentication/page/login_page.dart';
import '../../feature/authentication/widget/authentication_scope.dart';
import '../resources/custom_theme.dart';
import '../router/app_router.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final AppRouter _appRouter = AppRouter();

  @override
  void dispose() {
    _appRouter.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        title: 'Easy Pharm App',
        debugShowCheckedModeBanner: false,
        theme: CustomTheme.theme,
        builder: (context, child) => MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
          child: AuthenticationScope(
            signInScreen: const LoginPage(),
            child: child ?? const SizedBox.shrink(),
          ),
        ),
        routerConfig: _appRouter.config(),
      );
}
