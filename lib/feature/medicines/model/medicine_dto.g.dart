// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medicine_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MedicineData _$MedicineDataFromJson(Map<String, dynamic> json) => MedicineData(
      name: json['name'] as String,
      description: json['description'] as String,
      price: json['price'] as String,
      category: json['category'] == null
          ? null
          : Category.fromJson(json['category'] as Map<String, dynamic>),
      symptoms: (json['symptoms'] as List<dynamic>?)
              ?.map((e) => Symptom.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$MedicineDataToJson(MedicineData instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'category': instance.category,
      'symptoms': instance.symptoms,
    };
