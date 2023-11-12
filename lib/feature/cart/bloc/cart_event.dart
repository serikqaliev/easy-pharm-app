part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  /// Fetches the cart items from the server
  const factory CartEvent.init() = CartEvent$Init;

  const factory CartEvent.addToCart({required final Medicine medicine}) = CartEvent$AddToCart;
  const factory CartEvent.removeFromCart({required final Medicine medicine}) = CartEvent$RemoveFromCart;
  const factory CartEvent.removeCartItem({required final CartItem cartItem}) = CartEvent$RemoveCartItem;
}
