import 'authentication_scope.dart';
import 'package:flutter/material.dart';

import '../bloc/authentication/authentication_bloc.dart';

class PhoneForm extends StatefulWidget {
  const PhoneForm({super.key});

  @override
  State<PhoneForm> createState() => _PhoneFormState();
}

class _PhoneFormState extends State<PhoneForm> {
  late final TextEditingController _phoneController;

  @override
  void initState() {
    _phoneController = TextEditingController(text: '+77473518566');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
            controller: _phoneController,
            decoration: const InputDecoration(
              labelText: 'Phone',
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () => AuthenticationScope.blocOf(context).add(AuthenticationEvent.sendPhone(phone: _phoneController.text)),
            child: const Text('Next'),
          ),
        ],
      ),
    );
  }
}
