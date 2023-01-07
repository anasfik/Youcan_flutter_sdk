class OptionalUserInformations {
  final String? firstName;
  final String? lastName;
  final String? country;
  final String? region;
  final String? city;
  final String? notes;

  OptionalUserInformations({
    required this.firstName,
    required this.lastName,
    required this.city,
    required this.country,
    required this.notes,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return {
      "first_name": firstName,
      "last_name": lastName,
      "country": country,
      "region": region,
      "city": city,
      "notes": notes,
    };
  }
}
