// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

/// The ShippingZone model at YouCan.
class ShippingZone {
  /// Returns identifier of shipping core ( UUID ).
  final String id;

  /// Returns the shipping core name.
  final String name;

  /// Returns the shipping core display name.
  final String displayName;

  /// Returns the shipping core countries.
  final dynamic countries;

  /// Returns if the shipping core is free.
  final bool isFree;

  /// Returns if the shipping core is active.
  final bool isActive;

  /// Returns the shipping core rate type.
  final String rateType;

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        displayName.hashCode ^
        countries.hashCode ^
        isFree.hashCode ^
        isActive.hashCode ^
        rateType.hashCode;
  }

  /// The ShippingZone model at YouCan.
  ShippingZone({
    required this.id,
    required this.name,
    required this.displayName,
    required this.countries,
    required this.isFree,
    required this.isActive,
    required this.rateType,
  });

  factory ShippingZone.fromMap(Map<String, dynamic> map) {
    return ShippingZone(
      id: map['id'] as String,
      name: map['name'] as String,
      displayName: map['display_name'] as String,
      countries: map['countries'],
      isFree: map['is_free'] as bool,
      isActive: map['is_active'] as bool,
      rateType: map['rate_type'] as String,
    );
  }

  factory ShippingZone.fromJson(String source) =>
      ShippingZone.fromMap(json.decode(source) as Map<String, dynamic>);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'display_name': displayName,
      'countries': countries,
      'is_free': isFree,
      'is_active': isActive,
      'rate_type': rateType,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  bool operator ==(covariant ShippingZone other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.displayName == displayName &&
        other.countries == countries &&
        other.isFree == isFree &&
        other.isActive == isActive &&
        other.rateType == rateType;
  }

  @override
  String toString() {
    return 'ShippingZone(id: $id, name: $name, displayName: $displayName, countries: $countries, isFree: $isFree, isActive: $isActive, rateType: $rateType)';
  }
}
