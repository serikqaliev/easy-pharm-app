part of 'symptoms_bloc.dart';

/* Symptoms States */

@freezed
class SymptomsState with _$SymptomsState {
  const SymptomsState._();

  /// Idling state
  const factory SymptomsState.idle({
    required final List<Symptom> symptoms,
    @Default('Idle') final String message,
    final String? error,
  }) = SymptomsState$Idle;

  /// Processing
  const factory SymptomsState.processing({
    required final List<Symptom> symptoms,
    @Default('Processing') final String message,
  }) = SymptomsState$Processing;

  /// Created
  const factory SymptomsState.created({
    required final List<Symptom> symptoms,
    @Default('Processing') final String message,
  }) = SymptomsState$Created;

  /// Deleted
  const factory SymptomsState.deleted({
    required final List<Symptom> symptoms,
    @Default('Processing') final String message,
  }) = SymptomsState$Deleted;

  static const SymptomsState initial = SymptomsState.idle(symptoms: []);

  /// If an error has occurred
  bool get hasError => maybeMap<bool>(orElse: () => false, idle: (state) => state.error != null);

  /// Get error message
  String? get error => mapOrNull(idle: (state) => state.error);

  /// Is in idle state
  bool get isIdling => !isProcessing;

  /// Is in progress state
  bool get isProcessing => maybeMap<bool>(orElse: () => false, processing: (_) => true);
}
