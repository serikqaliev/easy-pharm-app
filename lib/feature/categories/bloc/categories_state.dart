part of 'categories_bloc.dart';

@freezed
class CategoriesState with _$CategoriesState {
  const CategoriesState._();

  static const CategoriesState initial = CategoriesState.idle(categories: []);

  const factory CategoriesState.idle({required final List<Category> categories, final String? error}) = CategoriesState$Idle;

  const factory CategoriesState.processing({required final List<Category> categories}) = CategoriesState$Processing;

  const factory CategoriesState.added({required final List<Category> categories}) = CategoriesState$Added;

  bool get isIdling => maybeMap(idle: (_) => true, orElse: () => false);

  bool get isProcessing => maybeMap(processing: (_) => true, orElse: () => false);

  bool get hasError => maybeMap(orElse: () => false, idle: (state) => state.error != null);

  bool get isAdded => maybeMap(orElse: () => false, added: (_) => true);

  String? get error => mapOrNull(idle: (state) => state.error);
}
