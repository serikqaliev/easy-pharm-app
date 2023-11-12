import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../home/page/main_page.dart';
import '../bloc/authentication/authentication_bloc.dart';
import '../widget/widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) => Navigator(
        pages: <Page<Object?>>[
          MaterialPage<void>(
            child: Scaffold(
              appBar: AppBar(
                title: const Text('Sign In'),
              ),
              body: BlocBuilder<AuthenticationBloc, AuthenticationState>(
                builder: (context, state) {
                  if (state.isProcessing) return const Center(child: CircularProgressIndicator());

                  return Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      BlocBuilder<AuthenticationBloc, AuthenticationState>(
                        builder: (context, state) => state.flow.map(
                          initial: () => const Column(children: [Text('Send Phone')]),
                          codeSent: () => const Column(children: [Text('Code Sent')]),
                          notRegistered: () => const Column(children: [Text('Not Activated')]),
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
