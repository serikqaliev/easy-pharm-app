import 'dart:async';
import 'dart:io';

import '../../symptoms/model/symptom.dart';

import '../model/filter.dart';
import '../model/medicine.dart';
import '../model/medicine_dto.dart';
import 'medicines_network_provider.dart';

abstract interface class IMedicinesRepository {
  Future<Medicine> create({required final MedicineData medicine, final File? medicineImage});
  Future<List<Medicine>> list({final Filter? filter});
  Future<void> delete({required final int id});
  Future<Medicine> update({required final int id, required final MedicineData medicine});

  Future<List<Symptom>> getSymptoms({required Medicine medicine});
}

class MedicinesRepository implements IMedicinesRepository {
  final MedicinesNetworkProvider _networkProvider;

  MedicinesRepository({required final MedicinesNetworkProvider networkProvider}) : _networkProvider = networkProvider;

  @override
  Future<Medicine> create({required MedicineData medicine, final File? medicineImage}) async {
    final response = await _networkProvider.create(medicine.name, medicine.description, medicine.price, medicine.category?.id, medicineImage);
    if (medicine.symptoms.isNotEmpty) {
      await _networkProvider.addSymptoms(id: response.medicine.id, symptoms: medicine.symptoms.map((e) => e.id).toList());
    }
    return response.medicine;
  }

  @override
  Future<void> delete({required int id}) => _networkProvider.delete(id: id);

  @override
  Future<List<Medicine>> list({final Filter? filter}) async {
    final response = await _networkProvider.list(filter: filter);
    return response.medicines;
  }

  @override
  Future<Medicine> update({required int id, required MedicineData medicine}) async {
    final response = await _networkProvider.update(id: id, medicine: medicine);
    return response.medicine;
  }

  @override
  Future<List<Symptom>> getSymptoms({required Medicine medicine}) => _networkProvider.getSymptoms(id: medicine.id);
}
