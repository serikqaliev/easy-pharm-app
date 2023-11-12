import '../../categories/model/category.dart';

class Medicine {
  final int id;
  final String name;
  final String? description;
  final String price;
  final String? image;
  final List<String> lastThreeSymptoms;
  final Category? category;
  final DateTime createdAt;
  final DateTime updatedAt;

  const Medicine({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.image,
    required this.lastThreeSymptoms,
    required this.category,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Medicine.fromJson(Map<String, dynamic> json) => Medicine(
        id: json['id'] as int,
        name: json['name'] as String,
        description: json['description'] as String?,
        price: json['price'] as String,
        image: json['image'] as String?,
        lastThreeSymptoms: (json['last_three_symptoms'] as List<dynamic>).map((e) => e as String).toList(),
        category: json['category'] == null ? null : Category.fromJson(json['category'] as Map<String, dynamic>),
        createdAt: DateTime.parse(json['created_at'] as String),
        updatedAt: DateTime.parse(json['updated_at'] as String),
      );

  Map<String, dynamic> toJson() => {};

  @override
  bool operator ==(Object other) => identical(this, other) || other is Medicine && id == other.id;

  @override
  int get hashCode => id;
}
