import '../model/medicine.dart';

class MedicineResponse {
  late final Medicine medicine;

  static MedicineResponse fromJson(Map<String, dynamic> json) => MedicineResponse()..medicine = Medicine.fromJson(json);
}

class MedicinesResponse {
  late final List<Medicine> medicines;

  static MedicinesResponse fromJson(Map<String, dynamic> json) =>
      MedicinesResponse()..medicines = (json['medicines'] as List).map((e) => Medicine.fromJson(e)).toList();
}
