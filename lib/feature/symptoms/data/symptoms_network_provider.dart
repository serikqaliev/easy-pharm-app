import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../common/constant/config.dart';
import '../model/symptom.dart';
import '../model/symptom_dto.dart';

part 'symptoms_network_provider.g.dart';

@RestApi(baseUrl: Config.baseUrl)
abstract class SymptomsNetworkProvider {
  factory SymptomsNetworkProvider(Dio dio, {String baseUrl}) = _SymptomsNetworkProvider;

  @POST('/symptoms')
  Future<Symptom> create(@Body() final SymptomDto symptom);

  @GET('/symptoms/list')
  Future<List<Symptom>> list();

  @DELETE('/symptoms/{id}')
  Future<void> delete(@Path() int id);

  @DELETE('/symptoms/delete_by_ids')
  Future<void> deleteByIds(@Field('symptoms_ids') List<int> ids);
}
