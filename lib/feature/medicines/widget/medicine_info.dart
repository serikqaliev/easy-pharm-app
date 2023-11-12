import 'package:flutter/material.dart';

import '../../authentication/widget/authentication_scope.dart';
import '../../cart/widget/add_to_cart_button.dart';
import '../model/medicine.dart';

class MedicineInfo extends StatelessWidget {
  const MedicineInfo({
    super.key,
    required this.medicine,
  });

  final Medicine medicine;

  @override
  Widget build(BuildContext context) {
    final isStaff = AuthenticationScope.userOf(context).isStaff;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MedicineTitle(medicine: medicine),
        const SizedBox(height: 8),
        MedicineDescription(description: medicine.description),
        const SizedBox(height: 8),
        MedicineSymptoms(symptoms: medicine.lastThreeSymptoms),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: isStaff ? const EdgeInsets.only(bottom: 16) : EdgeInsets.zero,
              child: MedicinePrice(price: medicine.price),
            ),
            if (!isStaff) AddToCartButton(medicine: medicine),
          ],
        ),
      ],
    );
  }
}

class MedicineTitle extends StatelessWidget {
  const MedicineTitle({
    super.key,
    required this.medicine,
  });

  final Medicine medicine;

  @override
  Widget build(BuildContext context) {
    return Text(
      medicine.name,
      style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
    );
  }
}

class MedicineDescription extends StatelessWidget {
  const MedicineDescription({
    super.key,
    this.description = 'Не указано',
  });

  final String? description;

  @override
  Widget build(BuildContext context) {
    return Text(
      description ?? 'Не указано',
      style: Theme.of(context).textTheme.bodySmall,
      maxLines: 2,
    );
  }
}

class MedicinePrice extends StatelessWidget {
  const MedicinePrice({super.key, required this.price});

  final String price;

  @override
  Widget build(BuildContext context) {
    return Text(
      '$price ₸',
      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            color: Theme.of(context).colorScheme.primary,
            fontWeight: FontWeight.bold,
          ),
    );
  }
}

class MedicineSymptoms extends StatelessWidget {
  const MedicineSymptoms({
    super.key,
    required this.symptoms,
  });

  final List<String> symptoms;

  @override
  Widget build(BuildContext context) {
    if (symptoms.isNotEmpty) {
      return Wrap(
        spacing: 2,
        runSpacing: 2,
        children: symptoms
            .map((e) => Chip(
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  padding: const EdgeInsets.all(2),
                  label: Text(e, style: Theme.of(context).textTheme.bodySmall),
                ))
            .toList(),
      );
    }

    return const Offstage();
  }
}
