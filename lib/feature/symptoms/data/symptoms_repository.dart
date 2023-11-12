import 'symptoms_network_provider.dart';
import '../model/symptom.dart';
import '../model/symptom_dto.dart';

abstract interface class ISymptomsRepository {
  Future<Symptom> create(SymptomDto symptom);
  Future<List<Symptom>> list();
  Future<void> delete(Symptom symptom);
  Future<void> deleteSymptoms(List<Symptom> symptoms);
}

class SymptomsRepository implements ISymptomsRepository {
  final SymptomsNetworkProvider _networkProvider;

  const SymptomsRepository({
    required final SymptomsNetworkProvider networkProvider,
  }) : _networkProvider = networkProvider;

  @override
  Future<Symptom> create(SymptomDto symptom) => _networkProvider.create(symptom);

  @override
  Future<void> delete(Symptom symptom) => _networkProvider.delete(symptom.id);

  @override
  Future<List<Symptom>> list() => _networkProvider.list();

  @override
  Future<void> deleteSymptoms(List<Symptom> symptoms) => _networkProvider.deleteByIds(symptoms.map((e) => e.id).toList());
}
