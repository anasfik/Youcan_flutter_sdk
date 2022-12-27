// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

/// The Customer model at YouCan.
class Customer {
  /// Returns identifier ( UUID ) of the customer.
  final String id;

  /// Returns the customer email.
  final String email;

  /// Returns the customer password.
  final String? password;

  /// Returns the customer first name.
  final String? firstName;

  /// Returns the customer last name.
  final String? lastName;

  /// Returns the customer phone.
  final String? phone;

  /// Returns the customer country.
  final String? country;

  /// Returns the customer region.
  final String? region;

  /// Returns the customer city.
  final String? city;

  /// Returns the customer notes.
  final String? notes;

  /// Returns the customer created date.
  final String? createdAt;

  /// Returns the customer updated at.
  final String? updatedAt;

  /// Returns the customer deleted at.
  final String? deletedAt;

  /// Returns the customer last activity.
  final String? lastActivity;

  /// Returns the customer store id.
  final String storeId;

  @override
  int get hashCode {
    return id.hashCode ^
        email.hashCode ^
        password.hashCode ^
        firstName.hashCode ^
        lastName.hashCode ^
        phone.hashCode ^
        country.hashCode ^
        region.hashCode ^
        city.hashCode ^
        notes.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode ^
        deletedAt.hashCode ^
        lastActivity.hashCode ^
        storeId.hashCode;
  }

  Customer({
    required this.id,
    required this.email,
    this.password,
    this.firstName,
    this.lastName,
    this.phone,
    this.country,
    this.region,
    this.city,
    this.notes,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.lastActivity,
    required this.storeId,
  });

  factory Customer.fromMap(Map<String, dynamic> map) {
    return Customer(
      id: map['id'] as String,
      email: map['email'] as String,
      password: map['password'] != null ? map['password'] as String : null,
      firstName: map['firstName'] != null ? map['firstName'] as String : null,
      lastName: map['lastName'] != null ? map['lastName'] as String : null,
      phone: map['phone'] != null ? map['phone'] as String : null,
      country: map['country'] != null ? map['country'] as String : null,
      region: map['region'] != null ? map['region'] as String : null,
      city: map['city'] != null ? map['city'] as String : null,
      notes: map['notes'] != null ? map['notes'] as String : null,
      createdAt: map['created_at'] != null ? map['created_at'] as String : null,
      updatedAt: map['updated_at'] != null ? map['updated_at'] as String : null,
      deletedAt: map['deleted_at'] != null ? map['deleted_at'] as String : null,
      lastActivity:
          map['last_activity'] != null ? map['last_activity'] as String : null,
      storeId: map['store_id'] as String,
    );
  }
  factory Customer.fromJson(String source) =>
      Customer.fromMap(json.decode(source) as Map<String, dynamic>);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'email': email,
      'password': password,
      'firstName': firstName,
      'lastName': lastName,
      'phone': phone,
      'country': country,
      'region': region,
      'city': city,
      'notes': notes,
      'createdAt': createdAt,
      'updated_at': updatedAt,
      'deleted_at': deletedAt,
      'last_activity': lastActivity,
      'store_id': storeId,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  bool operator ==(covariant Customer other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.email == email &&
        other.password == password &&
        other.firstName == firstName &&
        other.lastName == lastName &&
        other.phone == phone &&
        other.country == country &&
        other.region == region &&
        other.city == city &&
        other.notes == notes &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.deletedAt == deletedAt &&
        other.lastActivity == lastActivity &&
        other.storeId == storeId;
  }

  @override
  String toString() {
    return 'Customer(id: $id, email: $email, password: $password, firstName: $firstName, lastName: $lastName, phone: $phone, country: $country, region: $region, city: $city, notes: $notes, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, lastActivity: $lastActivity, storeId: $storeId)';
  }
}
