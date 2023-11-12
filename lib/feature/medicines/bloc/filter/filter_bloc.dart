import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../categories/model/category.dart';
import '../../../symptoms/model/symptom.dart';
import '../../model/filter.dart';

part 'filter_bloc.freezed.dart';
part 'filter_event.dart';
part 'filter_state.dart';

class FilterBloc extends Bloc<FilterEvent, FilterState> {
  FilterBloc() : super(FilterState.initial) {
    on<FilterEvent>(
      (event, emit) {
        event.map(
          init: (event) => _init(event, emit),
          searchChanged: (event) => _searchChanged(event, emit),
          categoryChanged: (event) => _categoryChanged(event, emit),
          symptomChanged: (event) => _symptomChanged(event, emit),
          priceFromChanged: (event) => _priceFromChanged(event, emit),
          priceToChanged: (event) => _priceToChanged(event, emit),
        );
      },
    );
  }

  Future<void> _init(
    FilterEvent$Init event,
    Emitter<FilterState> emit,
  ) async {}

  Future<void> _searchChanged(
    FilterEvent$SearchChanged event,
    Emitter<FilterState> emit,
  ) async {}

  Future<void> _categoryChanged(
    FilterEvent$CategoryChanged event,
    Emitter<FilterState> emit,
  ) async {}

  Future<void> _symptomChanged(
    FilterEvent$SymptomChanged event,
    Emitter<FilterState> emit,
  ) async {}

  Future<void> _priceFromChanged(
    FilterEvent$PriceFromChanged event,
    Emitter<FilterState> emit,
  ) async {}

  Future<void> _priceToChanged(
    FilterEvent$PriceToChanged event,
    Emitter<FilterState> emit,
  ) async {}
}
