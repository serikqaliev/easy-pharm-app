import 'package:json_annotation/json_annotation.dart';

part 'symptom.g.dart';

/// {@template symptom}
/// Symptom class
/// {@endtemplate}
@JsonSerializable()
class Symptom {
  /// {@macro symptom}
  const Symptom({
    required this.id,
    required this.name,
    required this.description,
  });

  final int id;
  final String name;
  final String description;

  /// Converts this symptom to a json representation.
  Map<String, Object?> toJson() => _$SymptomToJson(this);

  /// Creates a [Symptom] from a json representation.
  static Symptom fromJson(Map<String, Object?> json) => _$SymptomFromJson(json);

  @override
  operator ==(Object other) => identical(this, other) || other is Symptom && id == other.id;

  @override
  int get hashCode => id;
}
