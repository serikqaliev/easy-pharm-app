import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/utils/error_util.dart';
import '../bloc/medicines/medicines_bloc.dart';
import '../widget/create_medicine_form.dart';

@RoutePage()
class CreateMedicinePage extends StatelessWidget {
  const CreateMedicinePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Добавить лекарство',
        ),
      ),
      body: const SafeArea(child: CreateMedicinePageBody()),
    );
  }
}

class CreateMedicinePageBody extends StatelessWidget {
  const CreateMedicinePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<MedicinesBloc, MedicinesState>(
      listener: (context, state) {
        if (state.isCreated) context.router.pop();
        if (state.hasError) ErrorUtil.showSnackBar(context, state.error!);
      },
      child: const CreateMedicineForm(),
    );
  }
}
