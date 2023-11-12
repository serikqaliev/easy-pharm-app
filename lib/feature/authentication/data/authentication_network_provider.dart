import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../common/constant/config.dart';
import '../model/user.dart';
import 'responses.dart';

part 'authentication_network_provider.g.dart';

@RestApi(baseUrl: Config.baseUrl)
abstract class AuthenticationNetworkProvider {
  factory AuthenticationNetworkProvider(Dio dio, {String baseUrl}) = _AuthenticationNetworkProvider;

  @POST('/auth/create')
  Future<SendCodeResponse> sendPhone({@Field() required final String phone});

  @POST('/auth/verify')
  Future<User> verifyPhone({@Field('user_id') required final int userId, @Field() required final String code});

  @GET('/auth/me')
  Future<User> me();

  @POST('/auth/activate')
  Future<User> activate({@Field() required final String username});

  @DELETE('/auth/delete')
  Future<void> delete();
}
