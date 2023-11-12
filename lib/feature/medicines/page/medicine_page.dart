import 'package:auto_route/auto_route.dart';
import '../../authentication/widget/authentication_scope.dart';
import '../../symptoms/model/symptom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../dependencies/widget/dependencies_scope.dart';
import '../bloc/medicine/medicine_bloc.dart';
import '../model/medicine.dart';

@RoutePage()
class MedicinePage extends StatelessWidget {
  const MedicinePage({super.key, required this.medicine});

  final Medicine medicine;

  @override
  Widget build(BuildContext context) {
    final isStaff = AuthenticationScope.userOf(context).isStaff;

    return BlocProvider(
      create: (context) => MedicineBloc(
        medicinesRepository: DependenciesScope.of(context).medicinesRepository,
        medicine: medicine,
      )..add(MedicineEvent.init(medicine: medicine)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(medicine.name),
          actions: [
            if (isStaff)
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.edit),
              ),
          ],
        ),
        body: const MedicinePageBody(),
      ),
    );
  }
}

class MedicinePageBody extends StatelessWidget {
  const MedicinePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        _Image(),
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _Name(),
              SizedBox(height: 24),
              _Description(),
              SizedBox(height: 24),
              _Category(),
            ],
          ),
        ),
        Divider(),
        _Symptoms(),
      ],
    );
  }
}

class _Category extends StatelessWidget {
  const _Category({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Категория',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        BlocSelector<MedicineBloc, MedicineState, String>(
          selector: (state) => state.medicine.category?.name ?? 'Категория отсутствует',
          builder: (context, name) {
            return Text(name);
          },
        ),
      ],
    );
  }
}

class _Symptoms extends StatelessWidget {
  const _Symptoms();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Симптомы',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          BlocBuilder<MedicineBloc, MedicineState>(
            buildWhen: (previous, current) => previous.symptoms != current.symptoms || previous.isProcessing != current.isProcessing,
            builder: (context, state) {
              if (state.isProcessing) return const Center(child: CircularProgressIndicator.adaptive());
              if (state.symptoms.isEmpty) return const Text('Симптомы отсутствуют');

              return Wrap(children: [
                for (final symptom in state.symptoms) Padding(padding: const EdgeInsets.all(8.0), child: Chip(label: Text(symptom.name))),
              ]);
            },
          ),
        ],
      ),
    );
  }
}

class _Description extends StatelessWidget {
  const _Description();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Описание',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        BlocSelector<MedicineBloc, MedicineState, String>(
          selector: (state) => state.medicine.description ?? 'Описание отсутствует',
          builder: (context, description) {
            return Text(
              description,
              style: Theme.of(context).textTheme.bodyLarge,
            );
          },
        ),
      ],
    );
  }
}

class _Name extends StatelessWidget {
  const _Name();

  @override
  Widget build(BuildContext context) {
    return BlocSelector<MedicineBloc, MedicineState, String>(
      selector: (state) => state.medicine.name,
      builder: (context, name) => Text(
        name,
        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold,
            ),
      ),
    );
  }
}

class _Image extends StatelessWidget {
  const _Image();

  @override
  Widget build(BuildContext context) {
    return BlocSelector<MedicineBloc, MedicineState, String?>(
      selector: (state) => state.medicine.image,
      builder: (context, image) {
        return AspectRatio(
          aspectRatio: 4 / 3,
          child: image != null
              ? Image.network(
                  image,
                  fit: BoxFit.cover,
                )
              : ColoredBox(
                  color: Colors.grey.shade200,
                  child: const Center(
                    child: Icon(
                      Icons.medication_outlined,
                      size: 48,
                    ),
                  ),
                ),
        );
      },
    );
  }
}
