import 'package:freezed_annotation/freezed_annotation.dart';

import '../../categories/model/category.dart';
import '../../symptoms/model/symptom.dart';

class Filter {
  final String search;
  final Category? category;
  final List<Symptom> symptoms;
  final int? priceFrom;
  final int? priceTo;

  const Filter({
    this.search = '',
    this.category,
    this.symptoms = const [],
    this.priceFrom,
    this.priceTo,
  });

  String? isSearchValid() {
    if (search.length < 3) return 'Поисковый запрос должен быть не менее 3 символов';
    return null;
  }

  Filter copyWith({
    String? search,
    Category? category,
    List<Symptom>? symptoms,
    int? priceFrom,
    int? priceTo,
  }) =>
      Filter(
        search: search ?? this.search,
        category: category ?? this.category,
        symptoms: symptoms ?? this.symptoms,
        priceFrom: priceFrom ?? this.priceFrom,
        priceTo: priceTo ?? this.priceTo,
      );

  static const Filter empty = Filter();

  Map<String, Object?> toJson() => {
        'search': search,
        'category_id': category?.id,
        'symptoms_ids': symptoms.map((e) => e.id).toList(),
        'price_from': priceFrom,
        'price_to': priceTo,
      };

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Filter &&
        other.search == search &&
        other.category == category &&
        const DeepCollectionEquality().equals(other.symptoms, symptoms) &&
        other.priceFrom == priceFrom &&
        other.priceTo == priceTo;
  }

  @override
  int get hashCode => Object.hash(
        search,
        category,
        const DeepCollectionEquality().hash(symptoms),
        priceFrom,
        priceTo,
      );
}
