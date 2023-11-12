import 'package:auto_route/annotations.dart';
import '../../authentication/bloc/authentication/authentication_bloc.dart';
import '../../authentication/widget/authentication_scope.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
    );
  }
}

class ProfilePageBody extends StatelessWidget {
  const ProfilePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () => AuthenticationScope.blocOf(context).add(const AuthenticationEvent.delete()),
        child: const Text('Delete'),
      ),
    );
  }
}
