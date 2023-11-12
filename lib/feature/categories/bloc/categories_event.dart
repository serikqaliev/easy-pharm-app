part of 'categories_bloc.dart';

@freezed
class CategoriesEvent with _$CategoriesEvent {
  const factory CategoriesEvent.init() = CategoriesEvent$Init;
  const factory CategoriesEvent.create({required final String name}) = CategoriesEvent$Create;
  const factory CategoriesEvent.update({required final int id, required final String name}) = CategoriesEvent$Update;
  const factory CategoriesEvent.delete({required final int id}) = CategoriesEvent$Delete;
}
