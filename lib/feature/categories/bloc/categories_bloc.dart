import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../common/bloc/bloc_set_state_mixin.dart';
import '../../../common/utils/error_util.dart';
import '../data/categories_repository.dart';
import '../model/category.dart';

part 'categories_bloc.freezed.dart';
part 'categories_event.dart';
part 'categories_state.dart';

class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> with SetStateMixin<CategoriesState> {
  final ICategroiesRepository _repository;

  CategoriesBloc({
    required final ICategroiesRepository repository,
  })  : _repository = repository,
        super(CategoriesState.initial) {
    on<CategoriesEvent>((event, emit) {
      event.map(
        init: (event) => _init(event, emit),
        create: (event) => _create(event, emit),
        update: (event) => _update(event, emit),
        delete: (event) => _delete(event, emit),
      );
    });
  }

  Future<void> _init(
    CategoriesEvent$Init event,
    Emitter<CategoriesState> emit,
  ) async {
    setState(CategoriesState.processing(categories: state.categories));
    try {
      final categories = await _repository.list();
      setState(CategoriesState.idle(categories: categories));
    } on Object catch (error) {
      setState(CategoriesState.idle(categories: [], error: ErrorUtil.formatMessage(error)));
      rethrow;
    }
  }

  Future<void> _create(
    CategoriesEvent$Create event,
    Emitter<CategoriesState> emit,
  ) async {
    setState(CategoriesState.processing(categories: state.categories));
    try {
      final category = await _repository.create(name: event.name);
      setState(CategoriesState.added(categories: [...state.categories, category]..sort()));
    } on Object catch (error) {
      setState(CategoriesState.idle(categories: state.categories, error: ErrorUtil.formatMessage(error)));
      rethrow;
    } finally {
      setState(CategoriesState.idle(categories: state.categories, error: state.error));
    }
  }

  Future<void> _update(
    CategoriesEvent$Update event,
    Emitter<CategoriesState> emit,
  ) async {
    setState(CategoriesState.processing(categories: state.categories));
    try {
      final category = await _repository.update(id: event.id, name: event.name);
      final categories = state.categories.map((e) => e.id == category.id ? category : e).toList();
      setState(CategoriesState.idle(categories: categories));
    } on Object catch (error) {
      setState(CategoriesState.idle(categories: state.categories, error: ErrorUtil.formatMessage(error)));
      rethrow;
    }
  }

  Future<void> _delete(
    CategoriesEvent$Delete event,
    Emitter<CategoriesState> emit,
  ) async {
    setState(CategoriesState.processing(categories: state.categories));
    try {
      await _repository.delete(id: event.id);
      final categories = state.categories.where((e) => e.id != event.id).toList();
      setState(CategoriesState.idle(categories: categories));
    } on Object catch (error) {
      setState(CategoriesState.idle(categories: state.categories, error: ErrorUtil.formatMessage(error)));
      rethrow;
    }
  }
}
