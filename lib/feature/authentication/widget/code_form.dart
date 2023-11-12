import 'authentication_scope.dart';
import 'package:flutter/material.dart';

import '../bloc/authentication/authentication_bloc.dart';

class CodeForm extends StatefulWidget {
  const CodeForm({super.key});

  @override
  State<CodeForm> createState() => _CodeFormState();
}

class _CodeFormState extends State<CodeForm> {
  late final TextEditingController _codeController;

  @override
  void initState() {
    _codeController = TextEditingController(text: '111111');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: _codeController,
          decoration: const InputDecoration(
            labelText: 'Code',
          ),
        ),
        ElevatedButton(
          onPressed: () => AuthenticationScope.blocOf(context).add(AuthenticationEvent.verifyPhone(code: _codeController.text)),
          child: const Text('Next'),
        ),
      ],
    );
  }
}