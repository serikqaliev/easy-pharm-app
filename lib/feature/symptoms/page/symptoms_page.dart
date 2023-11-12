import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/router/app_router.gr.dart';
import '../../../common/widget/success_snack_bar.dart';
import '../../authentication/widget/authentication_scope.dart';
import '../../dependencies/widget/dependencies_scope.dart';
import '../../medicines/model/filter.dart';
import '../../medicines/widget/symptoms_list_view.dart';
import '../bloc/symptoms_bloc.dart';
import '../model/symptom.dart';
import '../widget/symptoms_page_app_bar.dart';

@RoutePage()
class SymptomsPage extends StatelessWidget {
  const SymptomsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SymptomsBloc(
        repository: DependenciesScope.of(context).symptomsRepository,
      )..add(const SymptomsEvent.init()),
      child: const Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(56),
          child: SymptomsPageAppBar(),
        ),
        body: SymptomsPageBody(),
      ),
    );
  }
}

class SymptomsPageBody extends StatefulWidget {
  const SymptomsPageBody({super.key});

  @override
  State<SymptomsPageBody> createState() => _SymptomsPageBodyState();
}

class _SymptomsPageBodyState extends State<SymptomsPageBody> {
  List<Symptom> selectedSymptoms = [];

  void add(Symptom symptom) => setState(() => selectedSymptoms = [...selectedSymptoms, symptom]);

  void remove(Symptom symptom) => setState(() => selectedSymptoms = [...selectedSymptoms]..remove(symptom));

  @override
  Widget build(BuildContext context) {
    final isStaff = AuthenticationScope.userOf(context).isStaff;

    return BlocListener<SymptomsBloc, SymptomsState>(
      listener: (context, state) {
        state.mapOrNull(
          created: (_) => SuccessSnackBar.showSnackBar(context, 'Симптом добавлен'),
          deleted: (_) => setState(() => selectedSymptoms = []),
        );
      },
      child: Column(
        children: [
          Expanded(
            child: SymptomsListView(
              onLongTap: (symptom) {
                if (selectedSymptoms.isNotEmpty) return;
                add(symptom);
              },
              trailingBuilder: (context, symptom) => selectedSymptoms.isNotEmpty
                  ? Checkbox.adaptive(
                      value: selectedSymptoms.contains(symptom),
                      onChanged: (value) => value == true ? add(symptom) : remove(symptom),
                    )
                  : const SizedBox.shrink(),
            ),
          ),
          if (selectedSymptoms.isNotEmpty)
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  if (isStaff)
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () => context.read<SymptomsBloc>().add(
                              SymptomsEvent.delete(
                                symptoms: selectedSymptoms,
                              ),
                            ),
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                        child: const Text('Удалить'),
                      ),
                    ),
                  if (isStaff) const Spacer(),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () => context.pushRoute(
                        ResultRoute(
                          filter: Filter(
                            symptoms: selectedSymptoms,
                          ),
                        ),
                      ),
                      child: const Text('Поиск'),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
