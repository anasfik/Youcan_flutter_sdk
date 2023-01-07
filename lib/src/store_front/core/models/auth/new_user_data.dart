class NewUserData {
  final String? email;
  final String? password;
  final String? firstName;
  final String? lastName;
  final String? country;
  final String? region;
  final String? city;
  final String? notes;

  @override
  int get hashCode {
    return email.hashCode ^
        password.hashCode ^
        firstName.hashCode ^
        lastName.hashCode ^
        country.hashCode ^
        region.hashCode ^
        city.hashCode ^
        notes.hashCode;
  }

  NewUserData({
    required this.email,
    required this.password,
    required this.firstName,
    required this.lastName,
    required this.country,
    required this.region,
    required this.city,
    required this.notes,
  });

  @override
  String toString() {
    return 'NewUserData(email: $email, password: $password, firstName: $firstName, lastName: $lastName, country: $country, region: $region, city: $city, notes: $notes)';
  }

  @override
  bool operator ==(covariant NewUserData other) {
    if (identical(this, other)) return true;

    return other.email == email &&
        other.password == password &&
        other.firstName == firstName &&
        other.lastName == lastName &&
        other.country == country &&
        other.region == region &&
        other.city == city &&
        other.notes == notes;
  }

  Map<String, dynamic> toPersonalizedMap() {
    return <String, dynamic>{
      if (email != null) 'email': email,
      if (password != null) 'password': password,
      if (firstName != null) 'firstName': firstName,
      if (lastName != null) 'lastName': lastName,
      if (country != null) 'country': country,
      if (region != null) 'region': region,
      if (city != null) 'city': city,
      if (notes != null) 'notes': notes,
    };
  }

  NewUserData copyWith({
    String? email,
    String? password,
    String? firstName,
    String? lastName,
    String? country,
    String? region,
    String? city,
    String? notes,
  }) {
    return NewUserData(
      email: email ?? this.email,
      password: password ?? this.password,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      country: country ?? this.country,
      region: region ?? this.region,
      city: city ?? this.city,
      notes: notes ?? this.notes,
    );
  }
}
