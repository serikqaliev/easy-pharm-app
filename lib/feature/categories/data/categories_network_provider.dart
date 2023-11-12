import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../common/constant/config.dart';
import '../model/category.dart';

part 'categories_network_provider.g.dart';

@RestApi(baseUrl: Config.baseUrl)
abstract class CategoriesNetworkProvider {
  factory CategoriesNetworkProvider(Dio dio, {String baseUrl}) = _CategoriesNetworkProvider;

  @POST('/categories')
  Future<Category> create({@Field() required final String name});

  @GET('/categories/list')
  Future<List<Category>> list();

  @DELETE('/categories/{id}/delete')
  Future<void> delete({@Path() required final int id});

  @PUT('/categories/{id}')
  Future<Category> update({@Path() required final int id, @Field() required final String name});
}
