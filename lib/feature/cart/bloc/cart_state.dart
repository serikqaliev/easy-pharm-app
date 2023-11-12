part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  const CartState._();

  static const CartState initial = CartState.idle(cartItems: [], message: '');

  const factory CartState.idle({
    required final List<CartItem> cartItems,
    required final String message,
    final String? error,
  }) = CartState$Idle;

  const factory CartState.processing({
    required final List<CartItem> cartItems,
    required final String message,
  }) = CartState$Processing;
}
