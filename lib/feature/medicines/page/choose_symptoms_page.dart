import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../dependencies/widget/dependencies_scope.dart';
import '../../symptoms/bloc/symptoms_bloc.dart';
import '../../symptoms/model/symptom.dart';
import '../widget/choose_symptoms_page_body.dart';

@RoutePage<List<Symptom>>()
class ChooseSymptomsPage extends StatelessWidget {
  const ChooseSymptomsPage({
    super.key,
    required this.initialSymptoms,
  });

  final List<Symptom> initialSymptoms;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SymptomsBloc(
        repository: DependenciesScope.of(context).symptomsRepository,
      )..add(const SymptomsEvent.init()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Симптомы'),
        ),
        body: ChooseSymptomsPageBody(
          initialSymptoms: initialSymptoms,
        ),
      ),
    );
  }
}
