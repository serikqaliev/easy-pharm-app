import '../../medicines/model/medicine.dart';

class CartItemDto {
  final Medicine medicine;
  final int quantity;

  const CartItemDto({
    required this.medicine,
    required this.quantity,
  });

  CartItemDto copyWith({
    Medicine? medicine,
    int? quantity,
  }) {
    return CartItemDto(
      medicine: medicine ?? this.medicine,
      quantity: quantity ?? this.quantity,
    );
  }

  /// Converts [CartItemDto] to [Map<String, dynamic>]
  Map<String, dynamic> toJson() => {
        'medicine_id': medicine.id,
        'quantity': quantity,
      };

  /// Converts [Map<String, dynamic>] to [CartItemDto]
  factory CartItemDto.fromJson(Map<String, dynamic> json) => CartItemDto(
        medicine: Medicine.fromJson(json['medicine'] as Map<String, dynamic>),
        quantity: json['quantity'] as int,
      );

  @override
  int get hashCode => medicine.id;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || (other is CartItemDto && runtimeType == other.runtimeType && medicine.id == other.medicine.id);
}
