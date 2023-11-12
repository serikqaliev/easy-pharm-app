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
          const CircleAvatar(
            radius: 24,
            backgroundImage: NetworkImage(
              'https://avatars.githubusercontent.com/u/24712956?v=4',
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              'Добро пожаловать, ${user.username}!',
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
