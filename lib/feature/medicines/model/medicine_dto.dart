import 'package:json_annotation/json_annotation.dart';

import '../../categories/model/category.dart';
import '../../symptoms/model/symptom.dart';

part 'medicine_dto.g.dart';

@JsonSerializable()
class MedicineData {
  final String name;
  final String description;
  final String price;
  final Category? category;
  final List<Symptom> symptoms;

  const MedicineData({
    required this.name,
    required this.description,
    required this.price,
    this.category,
    this.symptoms = const [],
  });

  MedicineData copyWith({
    String? name,
    String? description,
    String? price,
    Category? category,
    List<Symptom>? symptoms,
  }) {
    return MedicineData(
      name: name ?? this.name,
      description: description ?? this.description,
      price: price ?? this.price,
      category: category ?? this.category,
      symptoms: symptoms ?? this.symptoms,
    );
  }

  static MedicineData empty() => const MedicineData(name: '', description: '', price: '');

  factory MedicineData.fromJson(Map<String, dynamic> json) => _$MedicineDataFromJson(json);

  Map<String, dynamic> toJson() => _$MedicineDataToJson(this);

  String? isValidName() {
    if (name.isEmpty) return 'Обязательное имя';
    if (name.length < 3) return 'Имя должно быть больше 3 символов';
    return null;
  }

  String? isValidDescription() {
    if (description.isEmpty) return 'Обязательное описание';
    if (description.length < 3) return 'Описание должно быть больше 3 символов';
    return null;
  }

  String? isValidPrice() {
    // check if price is number
    if (price.isEmpty) return 'Обязательная цена';
    if (double.tryParse(price) == null) return 'Цена должна быть числом';
    if (price.length < 3) return 'Цена должна быть больше 3 символов';
    return null;
  }
}
