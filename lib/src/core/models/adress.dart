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
  final String? zip_code;

  /// Returns the addressable city.
  final String? city;

  /// Returns the addressable country code.
  final String? country_code;

  /// Returns the addressable state.
  final String? state;

  /// Returns the addressable company.
  final String? company;

  /// Returns the addressable type.
  final String addressable_type;

  /// Returns the addressable id.
  final String addressable_id;

  /// Returns the addressable default.
  final bool is_default;

  /// Returns the addressable created at.
  final String? created_at;

  /// Returns the addressable updated at.
  final String? updated_at;

  /// Returns the addressable deleted at.
  final String? deleted_at;

  factory Address.fromMap(Map<String, dynamic> map) {
    return Address(
      id: map['id'] as String,
      firstName: map['firstName'] != null ? map['firstName'] as String : null,
      lastName: map['lastName'] != null ? map['lastName'] as String : null,
      firstLine: map['firstLine'] != null ? map['firstLine'] as String : null,
      secondLine:
          map['secondLine'] != null ? map['secondLine'] as String : null,
      phone: map['phone'] != null ? map['phone'] as String : null,
      region: map['region'] != null ? map['region'] as String : null,
      zip_code: map['zip_code'] != null ? map['zip_code'] as String : null,
      city: map['city'] != null ? map['city'] as String : null,
      country_code:
          map['country_code'] != null ? map['country_code'] as String : null,
      state: map['state'] != null ? map['state'] as String : null,
      company: map['company'] != null ? map['company'] as String : null,
      addressable_type: map['addressable_type'] as String,
      addressable_id: map['addressable_id'] as String,
      is_default: map['is_default'] as bool,
      created_at:
          map['created_at'] != null ? map['created_at'] as String : null,
      updated_at:
          map['updated_at'] != null ? map['updated_at'] as String : null,
      deleted_at:
          map['deleted_at'] != null ? map['deleted_at'] as String : null,
    );
  }

  factory Address.fromJson(String source) =>
      Address.fromMap(json.decode(source) as Map<String, dynamic>);
  Address({
    required this.id,
    this.firstName,
    this.lastName,
    this.firstLine,
    this.secondLine,
    this.phone,
    this.region,
    this.zip_code,
    this.city,
    this.country_code,
    this.state,
    this.company,
    required this.addressable_type,
    required this.addressable_id,
    required this.is_default,
    this.created_at,
    this.updated_at,
    this.deleted_at,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'firstName': firstName,
      'lastName': lastName,
      'firstLine': firstLine,
      'secondLine': secondLine,
      'phone': phone,
      'region': region,
      'zip_code': zip_code,
      'city': city,
      'country_code': country_code,
      'state': state,
      'company': company,
      'addressable_type': addressable_type,
      'addressable_id': addressable_id,
      'is_default': is_default,
      'created_at': created_at,
      'updated_at': updated_at,
      'deleted_at': deleted_at,
    };
  }

  String toJson() => json.encode(toMap());
}
