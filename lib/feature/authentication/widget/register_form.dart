import '../bloc/authentication/authentication_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/activation/activation_bloc.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  late final TextEditingController _usernameController;
  late final TextEditingController _staffSecretController;

  @override
  void initState() {
    _usernameController = TextEditingController(text: 'Akzhol');
    _staffSecretController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _staffSecretController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
            controller: _usernameController,
            decoration: const InputDecoration(
              hintText: 'Имя пользователя',
            ).applyDefaults(Theme.of(context).inputDecorationTheme),
          ),
          const SizedBox(height: 16),
          TextField(
            controller: _staffSecretController,
            decoration: const InputDecoration(
              hintText: 'Секретный код сотрудника',
            ).applyDefaults(Theme.of(context).inputDecorationTheme),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () => context.read<AuthenticationBloc>().add(
                  AuthenticationEvent.activate(
                    username: _usernameController.text,
                    staffSecret: _staffSecretController.text,
                    avatar: null,
                  ),
                ),
            child: const Text('Next'),
          ),
        ],
      ),
    );
  }
}
