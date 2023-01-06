class CustomerAccountInformations {
  final String id;
  final String firstName;
  final String lastName;
  final String fullName;
  final String email;
  final String avatar;
  final String phone;
  final String country;
  final String region;
  final String city;
  final String notes;
  final String createdAt;
  final String updatedAt;

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
        id: json["id"] == null ? null : json["id"],
        firstName: json["first_name"] == null ? null : json["first_name"],
        lastName: json["last_name"] == null ? null : json["last_name"],
        fullName: json["full_name"] == null ? null : json["full_name"],
        email: json["email"] == null ? null : json["email"],
        avatar: json["avatar"] == null ? null : json["avatar"],
        phone: json["phone"] == null ? null : json["phone"],
        country: json["country"] == null ? null : json["country"],
        region: json["region"] == null ? null : json["region"],
        city: json["city"] == null ? null : json["city"],
        notes: json["notes"] == null ? null : json["notes"],
        createdAt: json["created_at"] == null ? null : json["created_at"],
        updatedAt: json["updated_at"] == null ? null : json["updated_at"],
      );

  CustomerAccountInformations copyWith({
    String? id,
    String? firstName,
    String? lastName,
    String? fullName,
    String? email,
    String? avatar,
    String? phone,
    String? country,
    String? region,
    String? city,
    String? notes,
    String? createdAt,
    String? updatedAt,
  }) =>
      CustomerAccountInformations(
        id: id ?? this.id,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        fullName: fullName ?? this.fullName,
        email: email ?? this.email,
        avatar: avatar ?? this.avatar,
        phone: phone ?? this.phone,
        country: country ?? this.country,
        region: region ?? this.region,
        city: city ?? this.city,
        notes: notes ?? this.notes,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "first_name": firstName == null ? null : firstName,
        "last_name": lastName == null ? null : lastName,
        "full_name": fullName == null ? null : fullName,
        "email": email == null ? null : email,
        "avatar": avatar == null ? null : avatar,
        "phone": phone == null ? null : phone,
        "country": country == null ? null : country,
        "region": region == null ? null : region,
        "city": city == null ? null : city,
        "notes": notes == null ? null : notes,
        "created_at": createdAt == null ? null : createdAt,
        "updated_at": updatedAt == null ? null : updatedAt,
      };
}
