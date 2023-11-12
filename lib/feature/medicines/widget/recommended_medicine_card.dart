import 'package:flutter/material.dart';

import '../../../common/widget/image_builder.dart';
import '../model/medicine.dart';

class RecommendedMedicineCard extends StatelessWidget {
  const RecommendedMedicineCard({super.key, required this.medicine});

  final Medicine medicine;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 0.63,
      child: Card(
        color: Colors.white,
        shadowColor: Colors.black.withOpacity(0.1),
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.black.withOpacity(0.1)),
          borderRadius: BorderRadius.circular(16),
        ),
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                AspectRatio(
                  aspectRatio: 1,
                  child: CustomImage(
                    image: medicine.image,
                  ),
                ),
                Positioned(
                  right: 8,
                  top: 8,
                  child: DecoratedBox(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.favorite),
                    ),
                  ),
                ),
              ],
            ),
            _Symptoms(medicine: medicine),
            _Info(
              medicine: medicine,
            ),
          ],
        ),
      ),
    );
  }
}

class _Symptoms extends StatelessWidget {
  const _Symptoms({required this.medicine});

  final Medicine medicine;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(8),
        itemCount: medicine.lastThreeSymptoms.length,
        itemBuilder: (context, index) => Chip(
          labelStyle: const TextStyle(fontSize: 8),
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          labelPadding: EdgeInsets.zero,
          label: Text(
            medicine.lastThreeSymptoms[index] * 2,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        separatorBuilder: (context, index) => const SizedBox(
          width: 4,
        ),
      ),
    );
  }
}

class _Info extends StatelessWidget {
  const _Info({required this.medicine});

  final Medicine medicine;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text(
            medicine.name * 5,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Flexible(
                child: Text(
                  'Цена:',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Flexible(
                child: Text(
                  '${medicine.price} ₸',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
