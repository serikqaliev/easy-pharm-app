import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../medicines/model/medicine.dart';
import '../bloc/cart_bloc.dart';

class AddToCartButton extends StatelessWidget {
  const AddToCartButton({super.key, required this.medicine});

  final Medicine medicine;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<CartBloc, CartState, int>(
      selector: (state) => state.cartItems.firstWhereOrNull((element) => element.medicine.id == medicine.id)?.quantity ?? 0,
      builder: (context, quantity) {
        if (quantity > 0) {
          return Row(
            children: [
              IconButton(
                onPressed: () => context.read<CartBloc>().add(CartEvent.removeFromCart(medicine: medicine)),
                icon: Icon(quantity == 1 ? Icons.delete : Icons.remove),
              ),
              Text('$quantity'),
              IconButton(
                onPressed: () => context.read<CartBloc>().add(CartEvent.addToCart(medicine: medicine)),
                icon: const Icon(Icons.add),
              ),
            ],
          );
        }

        return ElevatedButton(
          onPressed: () => context.read<CartBloc>().add(CartEvent.addToCart(medicine: medicine)),
          child: const Text('Add to cart'),
        );
      },
    );
  }
}
