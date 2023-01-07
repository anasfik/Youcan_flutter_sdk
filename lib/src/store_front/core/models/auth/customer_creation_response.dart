class CustomerCreationResponse {
  final String? id;
  final String? firstName;
  final String? lastName;
  final String? fullName;
  final String? email;
  final String? avatar;
  final dynamic phone;
  final String? country;
  final String? region;
  final String? city;
  final String? notes;
  final String? location;
  final String? createdAt;
  final String? updatedAt;
  final dynamic deletedAt;
  final CustomerLinks? links;

  CustomerCreationResponse({
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
    required this.location,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
    required this.links,
  });

  factory CustomerCreationResponse.fromJson(Map<String, dynamic> json) =>
      CustomerCreationResponse(
        id: json["id"] == null ? null : json["id"],
        firstName: json["first_name"] == null ? null : json["first_name"],
        lastName: json["last_name"] == null ? null : json["last_name"],
        fullName: json["full_name"] == null ? null : json["full_name"],
        email: json["email"] == null ? null : json["email"],
        avatar: json["avatar"] == null ? null : json["avatar"],
        phone: json["phone"],
        country: json["country"] == null ? null : json["country"],
        region: json["region"] == null ? null : json["region"],
        city: json["city"] == null ? null : json["city"],
        notes: json["notes"] == null ? null : json["notes"],
        location: json["location"] == null ? null : json["location"],
        createdAt: json["created_at"] == null ? null : json["created_at"],
        updatedAt: json["updated_at"] == null ? null : json["updated_at"],
        deletedAt: json["deleted_at"],
        links: json["links"] == null
            ? null
            : CustomerLinks.fromJson(json["links"]),
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
        "location": location,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "deleted_at": deletedAt,
        "links": links?.toJson(),
      };

  @override
  String toString() {
    return 'CustomerCreationResponse(id: $id, firstName: $firstName, lastName: $lastName, fullName: $fullName, email: $email, avatar: $avatar, phone: $phone, country: $country, region: $region, city: $city, notes: $notes, location: $location, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, links: $links)';
  }
}

class CustomerLinks {
  final String? edit;

  CustomerLinks({
    required this.edit,
  });

  factory CustomerLinks.fromJson(Map<String, dynamic> json) => CustomerLinks(
        edit: json["edit"],
      );

  Map<String, dynamic> toJson() => {
        "edit": edit,
      };
}
