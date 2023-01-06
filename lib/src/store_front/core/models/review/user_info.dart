class CustomerAccountInformations {
  final String? id;
  final String? firstName;
  final String? lastName;
  final String? fullName;
  final String? email;
  final String? avatar;
  final String? phone;
  final String? country;
  final String? region;
  final String? city;
  final String? notes;
  final String? createdAt;
  final String? updatedAt;

  @override
  int get hashCode {
    return id.hashCode ^
        firstName.hashCode ^
        lastName.hashCode ^
        fullName.hashCode ^
        email.hashCode ^
        avatar.hashCode ^
        phone.hashCode ^
        country.hashCode ^
        region.hashCode ^
        city.hashCode ^
        notes.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode;
  }

  CustomerAccountInformations({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.fullName,
    required this.email,
    required this.avatar,
    required this.phone,
    required this.country,
    required this.region,
    required this.city,
    required this.notes,
    required this.createdAt,
    required this.updatedAt,
  });
  factory CustomerAccountInformations.fromJson(Map<String, dynamic> json) =>
      CustomerAccountInformations(
        id: json["id"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        fullName: json["full_name"],
        email: json["email"],
        avatar: json["avatar"],
        phone: json["phone"],
        country: json["country"],
        region: json["region"],
        city: json["city"],
        notes: json["notes"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "first_name": firstName,
        "last_name": lastName,
        "full_name": fullName,
        "email": email,
        "avatar": avatar,
        "phone": phone,
        "country": country,
        "region": region,
        "city": city,
        "notes": notes,
        "created_at": createdAt,
        "updated_at": updatedAt,
      };

  @override
  String toString() {
    return 'CustomerAccountInformations(id: $id, firstName: $firstName, lastName: $lastName, fullName: $fullName, email: $email, avatar: $avatar, phone: $phone, country: $country, region: $region, city: $city, notes: $notes, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(covariant CustomerAccountInformations other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.firstName == firstName &&
        other.lastName == lastName &&
        other.fullName == fullName &&
        other.email == email &&
        other.avatar == avatar &&
        other.phone == phone &&
        other.country == country &&
        other.region == region &&
        other.city == city &&
        other.notes == notes &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt;
  }
}
