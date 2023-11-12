part of 'medicine_bloc.dart';

/* Medicine States */

@freezed
class MedicineState with _$MedicineState {
  const MedicineState._();

  /// Idling state
  const factory MedicineState.idle({
    required final Medicine medicine,
    @Default([]) final List<Symptom> symptoms,
    @Default('Idle') final String message,
    final String? error,
  }) = MedicineState$Idle;

  /// Processing
  const factory MedicineState.processing({
    required final Medicine medicine,
    @Default([]) final List<Symptom> symptoms,
    @Default('Processing') final String message,
  }) = MedicineState$Processing;

  static MedicineState fromMedicine(Medicine medicine) => MedicineState.idle(medicine: medicine);

  /// Has medicine
  bool get hasData => medicine != null;

  /// If an error has occurred
  bool get hasError => maybeMap<bool>(orElse: () => false, idle: (state) => state.error != null);

  /// Get error message
  String? get error => mapOrNull(idle: (state) => state.error);

  /// Is in idle state
  bool get isIdling => !isProcessing;

  /// Is in progress state
  bool get isProcessing => maybeMap<bool>(orElse: () => false, processing: (_) => true);
}
