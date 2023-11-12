import '../bloc/medicines/medicines_bloc.dart';
import '../model/medicine.dart';
import 'medicine_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MedicinesPageBody extends StatelessWidget {
  const MedicinesPageBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: BlocSelector<MedicinesBloc, MedicinesState, List<Medicine>>(
            selector: (state) => state.medicines,
            builder: (context, medicines) {
              return ListView.separated(
                padding: const EdgeInsets.all(16),
                itemBuilder: (context, index) => MedicineCard(medicine: medicines[index]),
                separatorBuilder: (context, index) => const SizedBox(height: 8),
                itemCount: medicines.length,
              );
            },
          ),
        ),
      ],
    );
  }
}
