// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

/// The ShippingRate model at YouCan.
class ShippingRate {
  /// Returns identifier of shipping rate ( UUID ).
  final String id;

  /// Returns the min shipping rate.
  final double min;

  /// Returns the max shipping rate.
  final double max;

  /// Returns the shipping rate price.
  final double price;

  /// Returns the shipping rate shipping zone id.
  final String shippingZoneId;

  @override
  int get hashCode {
    return id.hashCode ^
        min.hashCode ^
        max.hashCode ^
        price.hashCode ^
        shippingZoneId.hashCode;
  }

  /// The ShippingRate model at YouCan.
  ShippingRate({
    required this.id,
    required this.min,
    required this.max,
    required this.price,
    required this.shippingZoneId,
  });

  factory ShippingRate.fromMap(Map<String, dynamic> map) {
    return ShippingRate(
      id: map['id'] as String,
      min: map['min'] as double,
      max: map['max'] as double,
      price: map['price'] as double,
      shippingZoneId: map['shipping_zone_id'] as String,
    );
  }

  factory ShippingRate.fromJson(String source) =>
      ShippingRate.fromMap(json.decode(source) as Map<String, dynamic>);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'min': min,
      'max': max,
      'price': price,
      'shipping_zone_id': shippingZoneId,
    };
  }

  String toJson() => json.encode(toMap());
  @override
  bool operator ==(covariant ShippingRate other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.min == min &&
        other.max == max &&
        other.price == price &&
        other.shippingZoneId == shippingZoneId;
  }

  @override
  String toString() {
    return 'ShippingRate(id: $id, min: $min, max: $max, price: $price, shippingZoneId: $shippingZoneId)';
  }
}
