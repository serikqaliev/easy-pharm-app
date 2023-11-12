import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../symptoms/bloc/symptoms_bloc.dart';
import '../../symptoms/model/symptom.dart';

class SymptomsListView extends StatelessWidget {
  const SymptomsListView({super.key, this.trailingBuilder, this.onTap, this.onLongTap});

  final Widget Function(BuildContext context, Symptom symptom)? trailingBuilder;
  final Function(Symptom symptom)? onTap;

  final Function(Symptom symptom)? onLongTap;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SymptomsBloc, SymptomsState>(
      builder: (context, state) {
        return ListView.separated(
          itemBuilder: (context, index) => ListTile(
            title: Text(state.symptoms[index].name),
            subtitle: Text(state.symptoms[index].description),
            trailing: trailingBuilder?.call(context, state.symptoms[index]),
            onTap: () => onTap?.call(state.symptoms[index]),
            onLongPress: () => onLongTap?.call(state.symptoms[index]),
          ),
          separatorBuilder: (context, _) => const SizedBox(height: 8),
          itemCount: state.symptoms.length,
        );
      },
    );
  }
}
