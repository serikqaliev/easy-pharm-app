part of 'filter_bloc.dart';

@freezed
class FilterState with _$FilterState {
  const FilterState._();

  /// Idling state
  const factory FilterState.idle({
    @Default(Filter.empty) final Filter filter,
    @Default('Idle') final String message,
    final String? error,
  }) = FilterState$Idle;

  /// Processing
  const factory FilterState.processing({
    @Default(Filter.empty) final Filter filter,
    @Default('Processing') final String message,
  }) = FilterState$Processing;

  /// Successful
  const factory FilterState.successful({
    @Default(Filter.empty) final Filter filter,
    @Default('Successful') final String message,
  }) = FilterState$Successful;

  /// Initial
  static const FilterState initial = FilterState.idle();

  /// Has filter
  bool get hasData => filter != null;

  /// If an error has occurred
  bool get hasError => maybeMap<bool>(orElse: () => false, idle: (state) => state.error != null);

  /// Get error message
  String? get error => mapOrNull(idle: (state) => state.error);

  /// Is in idle state
  bool get isIdling => !isProcessing;

  /// Is in progress state
  bool get isProcessing => maybeMap<bool>(orElse: () => false, processing: (_) => true);
}
