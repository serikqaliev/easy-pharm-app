import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../common/constant/config.dart';
import '../model/cart_item.dart';

part 'cart_network_provider.g.dart';

@RestApi(baseUrl: Config.baseUrl)
abstract class CartNetworkProvider {
  factory CartNetworkProvider(Dio dio, {String baseUrl}) = _CartNetworkProvider;

  @GET('/cart/list')
  Future<List<CartItem>> getCart();

  @POST('/cart')
  Future<CartItem> addToCart({@Field('medicine_id') required final int medicineId});

  @POST('/cart/delete')
  Future<CartItem?> removeFromCart({@Path('medicine_id') required final int id});

  @DELETE('/cart/{id}')
  Future<void> removeCartItem({@Field() required final int medicineId});
}
