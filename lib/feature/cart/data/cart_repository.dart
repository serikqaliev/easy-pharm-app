import 'dart:async';

import '../../medicines/model/medicine.dart';
import '../model/cart_item.dart';
import 'cart_network_provider.dart';

abstract interface class ICartRepository {
  Future<List<CartItem>> getCart();
  Stream<List<CartItem>> cartChanges();
  Future<CartItem> addToCart({required final Medicine medicine});
  Future<CartItem?> removeFromCart({required final Medicine medicine});
}

class CartRepository implements ICartRepository {
  List<CartItem> _cartItems = [];
  final CartNetworkProvider _networkProvider;
  final StreamController<List<CartItem>> _cartController = StreamController<List<CartItem>>.broadcast();

  CartRepository({required final CartNetworkProvider networkProvider}) : _networkProvider = networkProvider;

  @override
  Future<CartItem> addToCart({required Medicine medicine}) async {
    final item = await _networkProvider.addToCart(medicineId: medicine.id);
    _cartController.add([..._cartItems, item]);
    return item;
  }

  @override
  Future<List<CartItem>> getCart() async {
    final items = await _networkProvider.getCart();
    _cartController.add(_cartItems = items);
    return items;
  }

  @override
  Future<CartItem?> removeFromCart({required final Medicine medicine}) async {
    final item = await _networkProvider.removeFromCart(id: medicine.id);
    if (item == null) return null;
    _cartController.add(_cartItems = _cartItems.where((element) => element.medicine.id != medicine.id).toList());
    return item;
  }

  @override
  Stream<List<CartItem>> cartChanges() => () async* {
        yield _cartItems;
        yield* _cartController.stream;
      }()
          .distinct()
          .skip(1);
}
