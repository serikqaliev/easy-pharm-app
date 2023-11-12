part of 'symptoms_bloc.dart';

@freezed
class SymptomsEvent with _$SymptomsEvent {
  const factory SymptomsEvent.init() = SymptomsEvent$Init;
  const factory SymptomsEvent.create({required final SymptomDto symptom}) = SymptomsEvent$Create;
  const factory SymptomsEvent.delete({required final List<Symptom> symptoms}) = SymptomsEvent$Delete;
}
