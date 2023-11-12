import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/router/app_router.gr.dart';
import '../../../common/widget/delete_dialog.dart';
import '../../../common/widget/image_builder.dart';
import '../../authentication/widget/widget.dart';
import '../bloc/medicines/medicines_bloc.dart';
import '../model/medicine.dart';
import 'medicine_info.dart';

class MedicineCard extends StatefulWidget {
  const MedicineCard({super.key, required this.medicine});

  final Medicine medicine;

  @override
  State<MedicineCard> createState() => _MedicineCardState();
}

class _MedicineCardState extends State<MedicineCard> {
  @override
  Widget build(BuildContext context) {
    final isStaff = AuthenticationScope.userOf(context).isStaff;

    return GestureDetector(
      onTap: () => context.pushRoute(MedicineRoute(medicine: widget.medicine)),
      child: Card(
        elevation: 3,
        color: Colors.white,
        shadowColor: Colors.black.withOpacity(0.1),
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.black.withOpacity(0.1)),
          borderRadius: BorderRadius.circular(16),
        ),
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: CustomImage(
                      image: widget.medicine.image,
                    ),
                  ),
                  if (isStaff)
                    Positioned(
                      top: 8,
                      right: 8,
                      child: PopupMenuButton(
                        itemBuilder: (context) => [
                          const PopupMenuItem(
                            child: Text('Изменить'),
                          ),
                          PopupMenuItem(
                            onTap: () => showDeleteDialog(
                              context,
                              onConfirm: () => context.read<MedicinesBloc>().add(
                                    MedicinesEvent.delete(
                                      medicine: widget.medicine,
                                    ),
                                  ),
                            ),
                            child: const Text('Удалить'),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 16,
              ),
              child: MedicineInfo(medicine: widget.medicine),
            ),
          ],
        ),
      ),
    );
  }
}
