import 'dart:convert';

class Customer {
  final String id;
  final String email;
  final String? password;
  final String? firstName;
  final String? lastName;
  final String? phone;
  final String? country;
  final String? region;
  final String? city;
  final String? notes;
  final String? created_at;
  final String? updated_at;
  final String? deleted_at;
  final String? last_activity;
  final String store_id;

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
        created_at.hashCode ^
        updated_at.hashCode ^
        deleted_at.hashCode ^
        last_activity.hashCode ^
        store_id.hashCode;
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
    this.created_at,
    this.updated_at,
    this.deleted_at,
    this.last_activity,
    required this.store_id,
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
      created_at:
          map['created_at'] != null ? map['created_at'] as String : null,
      updated_at:
          map['updated_at'] != null ? map['updated_at'] as String : null,
      deleted_at:
          map['deleted_at'] != null ? map['deleted_at'] as String : null,
      last_activity:
          map['last_activity'] != null ? map['last_activity'] as String : null,
      store_id: map['store_id'] as String,
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
      'created_at': created_at,
      'updated_at': updated_at,
      'deleted_at': deleted_at,
      'last_activity': last_activity,
      'store_id': store_id,
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
        other.created_at == created_at &&
        other.updated_at == updated_at &&
        other.deleted_at == deleted_at &&
        other.last_activity == last_activity &&
        other.store_id == store_id;
  }
}
