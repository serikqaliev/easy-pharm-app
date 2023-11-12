import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../medicines/widget/medicine_card.dart';
import '../bloc/cart_bloc.dart';

@RoutePage()
class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
      ),
      body: const CartPageBody(),
    );
  }
}

class CartPageBody extends StatelessWidget {
  const CartPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        return ListView.separated(
          padding: const EdgeInsets.all(16),
          itemBuilder: (context, index) => MedicineCard(medicine: state.cartItems[index].medicine),
          separatorBuilder: (context, index) => const SizedBox(height: 16),
          itemCount: state.cartItems.length,
        );
      },
    );
  }
}
