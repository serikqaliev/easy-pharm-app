part of 'medicine_bloc.dart';

@freezed
class MedicineEvent with _$MedicineEvent {
  const factory MedicineEvent.init({required final Medicine medicine}) = MedicineEvent$Init;
}
