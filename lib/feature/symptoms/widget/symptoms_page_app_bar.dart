import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../authentication/widget/authentication_scope.dart';
import '../bloc/symptoms_bloc.dart';
import 'add_symptom_modal.dart';

class SymptomsPageAppBar extends StatefulWidget {
  const SymptomsPageAppBar({super.key});

  @override
  State<SymptomsPageAppBar> createState() => _SymptomsPageAppBarState();
}

class _SymptomsPageAppBarState extends State<SymptomsPageAppBar> {
  @override
  Widget build(BuildContext context) {
    final isStaff = AuthenticationScope.userOf(context).isStaff;

    return AppBar(
      title: const Text('Симптомы'),
      actions: [
        if (isStaff)
          IconButton(
            onPressed: () async {
              final symptomDto = await AddSymptomModal.show(context);
              if (!mounted) return;

              if (symptomDto != null) context.read<SymptomsBloc>().add(SymptomsEvent.create(symptom: symptomDto));
            },
            icon: const Icon(Icons.add),
          )
      ],
    );
  }
}
