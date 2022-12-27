// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

/// The coupon model at YouCan.
class Coupon {
  /// Returns the coupon id ( UUID ).
  final String id;

  /// Returns the coupon code.
  final String code;

  /// Returns the coupon description.
  final String description;

  /// Returns the coupon value.
  final double value;

  /// Returns the coupon type.
  final int type;

  /// Returns the coupon start date.
  final String startDate;

  /// Returns the coupon end date.
  final String? endDate;

  /// Returns the coupon max usage.
  final int maxUsage;

  /// Returns the coupon usage count.
  final int usageCount;

  /// Returns the coupon product ids.
  final dynamic productIds;

  /// Returns the store id.
  final String storeId;

  /// Returns the coupon creation date.
  final String createdAt;

  /// Returns the coupon update date.
  final String updatedAt;

  /// Returns the coupon delete date.
  final String deletedAt;

  @override
  int get hashCode {
    return id.hashCode ^
        code.hashCode ^
        description.hashCode ^
        value.hashCode ^
        type.hashCode ^
        startDate.hashCode ^
        endDate.hashCode ^
        maxUsage.hashCode ^
        usageCount.hashCode ^
        productIds.hashCode ^
        storeId.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode ^
        deletedAt.hashCode;
  }

  /// The coupon model at YouCan.
  Coupon({
    required this.id,
    required this.code,
    required this.description,
    required this.value,
    required this.type,
    required this.startDate,
    this.endDate,
    required this.maxUsage,
    required this.usageCount,
    required this.productIds,
    required this.storeId,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
  });

  factory Coupon.fromMap(Map<String, dynamic> map) {
    return Coupon(
      id: map['id'] as String,
      code: map['code'] as String,
      description: map['desription'] as String,
      value: map['value'] as double,
      type: map['type'] as int,
      startDate: map['start_date'] as String,
      endDate: map['end_date'] != null ? map['end_date'] as String : null,
      maxUsage: map['max_usage'] as int,
      usageCount: map['usage_count'] as int,
      productIds: map['product_ids'] as dynamic,
      storeId: map['store_id'] as String,
      createdAt: map['created_at'] as String,
      updatedAt: map['updated_at'] as String,
      deletedAt: map['deleted_at'] as String,
    );
  }

  factory Coupon.fromJson(String source) =>
      Coupon.fromMap(json.decode(source) as Map<String, dynamic>);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'code': code,
      'description': description,
      'value': value,
      'type': type,
      'start_date': startDate,
      'end_date': endDate,
      'max_usage': maxUsage,
      'usage_count': usageCount,
      'product_ids': productIds,
      'store_id': storeId,
      'created_at': createdAt,
      'updated_at': updatedAt,
      'deleted_at': deletedAt,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  bool operator ==(covariant Coupon other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.code == code &&
        other.description == description &&
        other.value == value &&
        other.type == type &&
        other.startDate == startDate &&
        other.endDate == endDate &&
        other.maxUsage == maxUsage &&
        other.usageCount == usageCount &&
        other.productIds == productIds &&
        other.storeId == storeId &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.deletedAt == deletedAt;
  }

  @override
  String toString() {
    return 'Coupon(id: $id, code: $code, description: $description, value: $value, type: $type, startDate: $startDate, endDate: $endDate, maxUsage: $maxUsage, usageCount: $usageCount, productIds: $productIds, storeId: $storeId, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }
}
