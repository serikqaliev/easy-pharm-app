import 'package:easy_pharm_app/feature/authentication/bloc/authentication/authentication_bloc.dart';
import 'package:flutter/material.dart';

import '../../authentication/widget/authentication_scope.dart';

class HelloWidget extends StatelessWidget {
  const HelloWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final user = AuthenticationScope.userOf(context);
    if (user.isUnauthenticated) return const SizedBox.shrink();

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
            child: Text(
              'Добро пожаловать, ${user.username}!',
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          IconButton(
            onPressed: () => AuthenticationScope.blocOf(context).add(
              const AuthenticationEvent.logout(),
            ),
            icon: Icon(
              Icons.logout,
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
        ],
      ),
    );
  }
}
