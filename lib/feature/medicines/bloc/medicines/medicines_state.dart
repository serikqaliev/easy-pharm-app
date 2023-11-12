part of 'medicines_bloc.dart';

@freezed
class MedicinesState with _$MedicinesState {
  const MedicinesState._();

  static const MedicinesState initial = MedicinesState.idle(medicines: [], message: 'Search for medicines');

  const factory MedicinesState.idle({
    required final List<Medicine> medicines,
    @Default(Filter.empty) final Filter filter,
    required final String message,
    final String? error,
  }) = MedicinesState$Idle;

  const factory MedicinesState.processing({
    required final List<Medicine> medicines,
    @Default(Filter.empty) final Filter filter,
    required final String message,
  }) = MedicinesState$Processing;

  const factory MedicinesState.created({
    required final List<Medicine> medicines,
    @Default(Filter.empty) final Filter filter,
    required final String message,
  }) = MedicinesState$Created;

  const factory MedicinesState.deleted({
    required final List<Medicine> medicines,
    @Default(Filter.empty) final Filter filter,
    required final String message,
  }) = MedicinesState$Deleted;

  bool get isProcessing => maybeMap(orElse: () => false, processing: (_) => true);

  bool get isIdling => maybeMap(orElse: () => false, idle: (_) => true);

  bool get isCreated => maybeMap(orElse: () => false, created: (_) => true);

  bool get hasError => maybeMap(orElse: () => false, idle: (state) => state.error != null);

  String? get error => maybeMap(orElse: () => null, idle: (state) => state.error);
}
