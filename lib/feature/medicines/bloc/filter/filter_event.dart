part of 'filter_bloc.dart';

@freezed
class FilterEvent with _$FilterEvent {
  /// Init event for fetching [categories, symptoms, countries] from server
  const factory FilterEvent.init() = FilterEvent$Init;

  const factory FilterEvent.searchChanged({required final String search}) = FilterEvent$SearchChanged;
  const factory FilterEvent.categoryChanged({required final Category category}) = FilterEvent$CategoryChanged;
  const factory FilterEvent.symptomChanged({required final Symptom symptom}) = FilterEvent$SymptomChanged;
  const factory FilterEvent.priceFromChanged({required final int priceFrom}) = FilterEvent$PriceFromChanged;
  const factory FilterEvent.priceToChanged({required final int priceTo}) = FilterEvent$PriceToChanged;
}
