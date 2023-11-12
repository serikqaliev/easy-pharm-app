import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../symptoms/model/symptom.dart';
import 'symptoms_list_view.dart';

class ChooseSymptomsPageBody extends StatefulWidget {
  const ChooseSymptomsPageBody({super.key, required this.initialSymptoms});

  final List<Symptom> initialSymptoms;

  @override
  State<ChooseSymptomsPageBody> createState() => _ChooseSymptomsPageBodyState();
}

class _ChooseSymptomsPageBodyState extends State<ChooseSymptomsPageBody> {
  late List<Symptom> symptoms;

  @override
  void initState() {
    super.initState();
    symptoms = widget.initialSymptoms;
  }

  void add(Symptom symptom) => setState(() => symptoms = [...symptoms, symptom]);

  void remove(Symptom symptom) => setState(() => symptoms = [...symptoms]..remove(symptom));

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SymptomsListView(
            trailingBuilder: (context, symptom) => Checkbox.adaptive(
              value: symptoms.contains(symptom),
              onChanged: (value) => value == true ? add(symptom) : remove(symptom),
            ),
            onTap: (symptom) => symptoms.contains(symptom) ? remove(symptom) : remove(symptom),
          ),
        ),
        ElevatedButton(
          onPressed: () => context.popRoute<List<Symptom>>(symptoms),
          child: const Text('Подтвердить'),
        ),
      ],
    );
  }
}
