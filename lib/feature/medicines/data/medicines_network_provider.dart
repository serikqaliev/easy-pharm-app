import 'dart:io';

import 'package:dio/dio.dart';
import '../../symptoms/model/symptom.dart';
import 'package:retrofit/retrofit.dart';

import '../../../common/constant/config.dart';
import '../model/filter.dart';
import '../model/medicine_dto.dart';
import 'responses.dart';

part 'medicines_network_provider.g.dart';

@RestApi(baseUrl: Config.baseUrl)
abstract class MedicinesNetworkProvider {
  factory MedicinesNetworkProvider(Dio dio, {String baseUrl}) = _MedicinesNetworkProvider;

  @POST('/medicines')
  @MultiPart()
  Future<MedicineResponse> create(
    @Part() final String name,
    @Part() final String description,
    @Part() final String price,
    @Part(name: 'category_id') final int? categoryId,
    @Part() File? image,
  );

  @POST('/medicines/list')
  Future<MedicinesResponse> list({@Body() final Filter? filter});

  @DELETE('/medicines/{id}/delete')
  Future<void> delete({@Path('id') required final int id});

  @PUT('/medicines/{id}')
  Future<MedicineResponse> update({@Path('id') required final int id, @Body() required final MedicineData medicine});

  @POST('/medicines/{id}/symptoms')
  Future<MedicineResponse> addSymptoms({
    @Path('id') required final int id,
    @Field('symptom_ids') required final List<int> symptoms,
  });

  @GET('/medicines/{id}/symptoms/list')
  Future<List<Symptom>> getSymptoms({@Path('id') required final int id});
}

// if (image != null) {
//       _data.files.add(MapEntry(
//         'image',
//         MultipartFile.fromFileSync(
//           image.path,
//           filename: image.path.split(Platform.pathSeparator).last,
//         ),
//       ));
//     }