import 'package:flutter/material.dart';

class RecommendedMedicinesWidget extends StatelessWidget {
  const RecommendedMedicinesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const _Title('Ранее смотрели'),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_forward,
                color: Colors.black,
              ),
            )
          ],
        ),
        SizedBox(
          height: 400,
          child: ListView.separated(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
              bottom: 16,
            ),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => const SizedBox(
              height: 100,
              child: ColoredBox(
                color: Colors.red,
              ),
            ),
            // TODO: uncomment when medicines bloc will be ready
            // itemBuilder: (context, index) => RecommendedMedicineCard(
            //   medicine: medicines[index],
            // ),
            itemCount: 10, // medicines.length,
            separatorBuilder: (context, index) => const SizedBox(width: 16),
          ),
        ),
      ],
    );
  }
}

class _Title extends StatelessWidget {
  const _Title(this.title);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Text(
        title,
        style: Theme.of(context).textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w800,
            ),
      ),
    );
  }
}
