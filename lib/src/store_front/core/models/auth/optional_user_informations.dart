class OptionalUserInformations {
  final String? firstName;
  final String? lastName;
  final String? country;
  final String? region;
  final String? city;
  final String? notes;

  OptionalUserInformations({
    this.firstName,
    this.lastName,
    this.city,
    this.country,
    this.notes,
    this.region,
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
