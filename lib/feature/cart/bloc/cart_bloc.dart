import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../common/bloc/bloc_set_state_mixin.dart';
import '../../../common/utils/error_util.dart';
import '../../medicines/model/medicine.dart';
import '../data/cart_repository.dart';
import '../model/cart_item.dart';

part 'cart_bloc.freezed.dart';
part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> with SetStateMixin<CartState> {
  final ICartRepository _cartRepository;

  CartBloc({
    required ICartRepository cartRepository,
  })  : _cartRepository = cartRepository,
        super(CartState.initial) {
    on<CartEvent>((event, emit) {
      event.map(
        init: (event) => _init(event, emit),
        addToCart: (event) => _addToCart(event, emit),
        removeFromCart: (event) => _removeFromCart(event, emit),
        removeCartItem: (event) => _removeCartItem(event, emit),
      );
    });
  }

  Future<void> _init(
    CartEvent$Init event,
    Emitter<CartState> emit,
  ) async {
    setState(CartState.processing(cartItems: state.cartItems, message: 'Fetching cart items'));
    try {
      final cartItems = await _cartRepository.getCart();
      setState(CartState.idle(cartItems: cartItems, message: 'Cart items fetched'));
    } on Object catch (error) {
      setState(CartState.idle(cartItems: state.cartItems, message: 'Failed to fetch cart items', error: ErrorUtil.formatMessage(error)));
    }
  }

  Future<void> _addToCart(
    CartEvent$AddToCart event,
    Emitter<CartState> emit,
  ) async {
    setState(CartState.processing(cartItems: state.cartItems, message: 'Adding to cart'));
    try {
      final cartItem = await _cartRepository.addToCart(medicine: event.medicine);
      if (state.cartItems.any((element) => element.medicine.id == cartItem.medicine.id)) {
        final cartItems = state.cartItems.map((e) => e.medicine.id == cartItem.medicine.id ? cartItem : e).toList();
        setState(CartState.idle(cartItems: cartItems, message: 'Added to cart'));
        return;
      }
      setState(CartState.idle(cartItems: [...state.cartItems, cartItem], message: 'Added to cart'));
    } on Object catch (error) {
      setState(CartState.idle(cartItems: state.cartItems, message: 'Failed to add to cart', error: ErrorUtil.formatMessage(error)));
    }
  }

  Future<void> _removeFromCart(
    CartEvent$RemoveFromCart event,
    Emitter<CartState> emit,
  ) async {
    setState(CartState.processing(cartItems: state.cartItems, message: 'Adding to cart'));
    try {
      final initialCartItem = state.cartItems.firstWhere((element) => element.medicine.id == event.medicine.id);
      final cartItem = await _cartRepository.removeFromCart(medicine: event.medicine);

      if (cartItem == null) {
        setState(
          CartState.idle(
            cartItems: [...state.cartItems]..removeWhere((element) => element.medicine.id == initialCartItem.medicine.id),
            message: 'Failed to remove from cart',
          ),
        );
        return;
      }

      final updatedItems = [...state.cartItems]
        ..removeWhere((element) => element.medicine.id == initialCartItem.medicine.id)
        ..add(cartItem);

      setState(CartState.idle(cartItems: updatedItems, message: 'Removed from cart'));
    } on Object catch (error) {
      setState(CartState.idle(cartItems: state.cartItems, message: 'Failed to add to cart', error: ErrorUtil.formatMessage(error)));
    }
  }

  Future<void> _removeCartItem(
    CartEvent$RemoveCartItem event,
    Emitter<CartState> emit,
  ) async {}
}
