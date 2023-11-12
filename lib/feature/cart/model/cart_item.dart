import 'package:freezed_annotation/freezed_annotation.dart';

import '../../medicines/model/medicine.dart';

/// {@template cart_item}
/// CartItem entity
/// {@endtemplate}
@immutable
class CartItem implements Comparable<CartItem> {
  /// {@macro cart_item}
  const CartItem({
    required this.medicine,
    required this.quantity,
    required this.updatedAt,
  });

  /// The medicine.
  final Medicine medicine;

  /// The quantity of the medicine.
  final int quantity;

  /// The last updated date.
  final DateTime updatedAt;

  /// Generate Class from Map<String, Object?>
  factory CartItem.fromJson(Map<String, Object?> json) => CartItem(
        medicine: Medicine.fromJson(json['medicine'] as Map<String, Object?>),
        quantity: (json['quantity'] as int?)!,
        updatedAt: DateTime.parse(json['updated_at'] as String),
      );

  /// Generate Map<String, Object?> from class
  @useResult
  Map<String, Object?> toJson() => <String, Object?>{
        'medicine': medicine.toJson(),
        'quantity': quantity,
        'updated_at': updatedAt,
      };

  /// Create a copy of this object with the given values.
  @useResult
  CartItem copyWith({
    Medicine? newMedicine,
    int? newQuantity,
    DateTime? updatedAt,
  }) =>
      CartItem(
        medicine: newMedicine ?? medicine,
        quantity: newQuantity ?? quantity,
        updatedAt: updatedAt ?? this.updatedAt,
      );

  @override
  int compareTo(CartItem other) => updatedAt.compareTo(other.updatedAt);

  @override
  int get hashCode => Object.hash(medicine, quantity, updatedAt);

  @override
  bool operator ==(Object other) =>
      identical(this, other) || (other is CartItem && other.medicine == medicine && other.quantity == quantity && other.updatedAt == updatedAt);
}
