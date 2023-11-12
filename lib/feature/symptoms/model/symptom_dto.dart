import 'package:json_annotation/json_annotation.dart';

part 'symptom_dto.g.dart';

/// {@template symptom_dto}
/// SymptomDto class
/// {@endtemplate}
@JsonSerializable()
class SymptomDto {
  /// {@macro symptom_dto}
  const SymptomDto({required this.name, required this.description});

  final String name;
  final String description;

  SymptomDto copyWith({
    String? name,
    String? description,
  }) =>
      SymptomDto(
        name: name ?? this.name,
        description: description ?? this.description,
      );

  static SymptomDto empty() => const SymptomDto(name: '', description: '');

  /// Converts this symptom to a json representation.
  Map<String, Object?> toJson() => _$SymptomDtoToJson(this);

  /// Creates a [SymptomDto] from a json representation.
  static SymptomDto fromJson(Map<String, Object?> json) => _$SymptomDtoFromJson(json);

  String? isNameValid() {
    if (name.isEmpty) return 'Название не может быть пустым';
    if (name.length < 3) return 'Название не может быть короче 3 символов';
  }

  String? isDescriptionValid() {
    if (description.isEmpty) return 'Название не может быть пустым';
    if (description.length < 3) return 'Название не может быть короче 3 символов';
  }
}
