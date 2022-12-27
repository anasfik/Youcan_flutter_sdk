// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

/// Address model at YouCan.
class Address {
  /// Returns identifier ( UUID ) of the address.
  final String id;

  /// Returns the addressable first name.
  final String? firstName;

  /// Returns the addressable last name.
  final String? lastName;

  /// Returns the addressable first line.
  final String? firstLine;

  /// Returns the addressable second line.
  final String? secondLine;

  /// Returns the addressable phone.
  final String? phone;

  /// Returns the addressable region.
  final String? region;

  /// Returns the addressable zip code.
  final String? zipCode;

  /// Returns the addressable city.
  final String? city;

  /// Returns the addressable country code.
  final String? countryCode;

  /// Returns the addressable state.
  final String? state;

  /// Returns the addressable company.
  final String? company;

  /// Returns the addressable type.
  final String addressableType;

  /// Returns the addressable id.
  final String addressableId;

  /// Returns the addressable default.
  final bool isDefault;

  /// Returns the addressable created at.
  final String? createdAt;

  /// Returns the addressable updated at.
  final String? updatedAt;

  /// Returns the addressable deleted at.
  final String? deletedAt;

  @override
  int get hashCode {
    return id.hashCode ^
        firstName.hashCode ^
        lastName.hashCode ^
        firstLine.hashCode ^
        secondLine.hashCode ^
        phone.hashCode ^
        region.hashCode ^
        zipCode.hashCode ^
        city.hashCode ^
        countryCode.hashCode ^
        state.hashCode ^
        company.hashCode ^
        addressableType.hashCode ^
        addressableId.hashCode ^
        isDefault.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode ^
        deletedAt.hashCode;
  }

  /// Address model at YouCan.
  Address({
    required this.id,
    this.firstName,
    this.lastName,
    this.firstLine,
    this.secondLine,
    this.phone,
    this.region,
    this.zipCode,
    this.city,
    this.countryCode,
    this.state,
    this.company,
    required this.addressableType,
    required this.addressableId,
    required this.isDefault,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  factory Address.fromMap(Map<String, dynamic> map) {
    return Address(
      id: map['id'] as String,
      firstName: map['first_name'] != null ? map['first_name'] as String : null,
      lastName: map['last_name'] != null ? map['last_name'] as String : null,
      firstLine: map['first_line'] != null ? map['first_line'] as String : null,
      secondLine:
          map['second_line'] != null ? map['second_line'] as String : null,
      phone: map['phone'] != null ? map['phone'] as String : null,
      region: map['region'] != null ? map['region'] as String : null,
      zipCode: map['zip_code'] != null ? map['zip_code'] as String : null,
      city: map['city'] != null ? map['city'] as String : null,
      countryCode:
          map['countryCode'] != null ? map['countryCode'] as String : null,
      state: map['state'] != null ? map['state'] as String : null,
      company: map['company'] != null ? map['company'] as String : null,
      addressableType: map['addressable_type'] as String,
      addressableId: map['addressable_id'] as String,
      isDefault: map['is_default'] as bool,
      createdAt: map['created_at'] != null ? map['created_at'] as String : null,
      updatedAt: map['updated_at'] != null ? map['updated_at'] as String : null,
      deletedAt: map['deleted_at'] != null ? map['deleted_at'] as String : null,
    );
  }

  factory Address.fromJson(String source) =>
      Address.fromMap(json.decode(source) as Map<String, dynamic>);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'first_name': firstName,
      'last_name': lastName,
      'first_line': firstLine,
      'second_line': secondLine,
      'phone': phone,
      'region': region,
      'zip_code': zipCode,
      'city': city,
      'country_code': countryCode,
      'state': state,
      'company': company,
      'addressable_type': addressableType,
      'addressable_id': addressableId,
      'is_default': isDefault,
      'created_at': createdAt,
      'updated_at': updatedAt,
      'deleted_at': deletedAt,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  bool operator ==(covariant Address other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.firstName == firstName &&
        other.lastName == lastName &&
        other.firstLine == firstLine &&
        other.secondLine == secondLine &&
        other.phone == phone &&
        other.region == region &&
        other.zipCode == zipCode &&
        other.city == city &&
        other.countryCode == countryCode &&
        other.state == state &&
        other.company == company &&
        other.addressableType == addressableType &&
        other.addressableId == addressableId &&
        other.isDefault == isDefault &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.deletedAt == deletedAt;
  }

  @override
  String toString() {
    return 'Address(id: $id, firstName: $firstName, lastName: $lastName, firstLine: $firstLine, secondLine: $secondLine, phone: $phone, region: $region, zipCode: $zipCode, city: $city, countryCode: $countryCode, state: $state, company: $company, addressableType: $addressableType, addressableId: $addressableId, isDefault: $isDefault, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }
}
