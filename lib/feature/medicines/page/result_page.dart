import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/router/app_router.gr.dart';
import '../../authentication/widget/widget.dart';
import '../../dependencies/widget/dependencies_scope.dart';
import '../bloc/medicines/medicines_bloc.dart';
import '../model/filter.dart';
import '../widget/medicines_page_body.dart';

@RoutePage()
class ResultPage extends StatelessWidget {
  const ResultPage({super.key, this.filter});

  final Filter? filter;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MedicinesBloc(
        repository: DependenciesScope.of(context).medicinesRepository,
      )..add(MedicinesEvent.init(filter: filter)),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Лекарства'),
          actions: const [
            FilterButton(),
          ],
        ),
        body: const MedicinesPageBody(),
      ),
    );
  }
}

class FilterButton extends StatelessWidget {
  const FilterButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => context.pushRoute(FilterRoute(initialFilter: context.read<MedicinesBloc>().state.filter)),
      icon: const Icon(Icons.tune_outlined),
    );
  }
}
