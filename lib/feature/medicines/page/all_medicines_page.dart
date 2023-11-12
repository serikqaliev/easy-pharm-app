import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/router/app_router.gr.dart';
import '../../authentication/widget/authentication_scope.dart';
import '../bloc/medicines/medicines_bloc.dart';
import '../model/filter.dart';
import '../widget/medicines_page_body.dart';

@RoutePage()
class AllMedicinesPage extends StatelessWidget {
  const AllMedicinesPage({super.key, this.filter});

  final Filter? filter;

  @override
  Widget build(BuildContext context) {
    final isStaff = AuthenticationScope.userOf(context).isStaff;

    return BlocProvider.value(
      value: context.read<MedicinesBloc>()..add(MedicinesEvent.init(filter: filter)),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Лекарства'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.tune_outlined),
            ),
            if (isStaff)
              IconButton(
                onPressed: () => context.router.push(const CreateMedicineRoute()),
                icon: const Icon(Icons.add),
              ),
          ],
        ),
        body: const MedicinesPageBody(),
      ),
    );
  }
}
