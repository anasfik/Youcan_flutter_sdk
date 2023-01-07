// ignore_for_file: public_member_api_docs, sort_constructors_first
class StoreInformations {
  String? slug;
  String? name;
  String? email;
  Currency? currency;
  String? logo;

  @override
  int get hashCode {
    return slug.hashCode ^
        name.hashCode ^
        email.hashCode ^
        currency.hashCode ^
        logo.hashCode;
  }

  StoreInformations({
    this.slug,
    this.name,
    this.email,
    this.currency,
    this.logo,
  });

  factory StoreInformations.fromMap(Map<String, dynamic> json) =>
      StoreInformations(
        slug: json["slug"],
        name: json["name"],
        email: json["email"],
        currency: Currency.fromJson(json["currency"]),
        logo: json["logo"],
      );

  Map<String, dynamic> toMap() => {
        "slug": slug,
        "name": name,
        "email": email,
        "currency": currency,
        "logo": logo,
      };

  @override
  String toString() {
    return 'StoreInformations(slug: $slug, name: $name, email: $email, currency: $currency, logo: $logo)';
  }

  @override
  bool operator ==(covariant StoreInformations other) {
    if (identical(this, other)) return true;

    return other.slug == slug &&
        other.name == name &&
        other.email == email &&
        other.currency == currency &&
        other.logo == logo;
  }
}

class Currency {
  String? code;
  String? symbol;

  @override
  int get hashCode => code.hashCode ^ symbol.hashCode;

  Currency({
    this.code,
    this.symbol,
  });

  factory Currency.fromJson(Map<String, dynamic> json) => Currency(
        code: json["code"],
        symbol: json["symbol"],
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "symbol": symbol,
      };

  @override
  bool operator ==(covariant Currency other) {
    if (identical(this, other)) return true;

    return other.code == code && other.symbol == symbol;
  }

  @override
  String toString() => 'Currency(code: $code, symbol: $symbol)';
}
