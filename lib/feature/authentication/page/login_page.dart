import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/authentication/authentication_bloc.dart';
import '../widget/widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) => Navigator(
        pages: <Page<Object?>>[
          MaterialPage<void>(
            child: Scaffold(
              body: BlocBuilder<AuthenticationBloc, AuthenticationState>(
                builder: (context, state) {
                  if (state.isProcessing) return const Center(child: CircularProgressIndicator());

                  return Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      BlocBuilder<AuthenticationBloc, AuthenticationState>(
                        builder: (context, state) => state.flow.map(
                          initial: () => const _Title(title: 'Вход'),
                          codeSent: () => const _Title(title: 'Код подтверждения'),
                          notRegistered: () => const _Title(title: 'Регистрация'),
                        ),
                      ),
                      BlocBuilder<AuthenticationBloc, AuthenticationState>(
                        builder: (context, state) => state.flow.map(
                          initial: () => const PhoneForm(),
                          codeSent: () => const CodeForm(),
                          notRegistered: () => const RegisterForm(),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
        onPopPage: (route, result) => route.didPop(result),
      );
}

class _Title extends StatelessWidget {
  const _Title({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
