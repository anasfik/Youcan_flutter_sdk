// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

/// The link model at YouCan.
class Link {
  /// Returns identifier ( UUID ) of the link.
  final String id;

  /// Returns the link name.
  final String name;

  /// Returns the link path.
  final String link;

  /// Returns type of link go to 1: Page, 2: Category 3: Product, 4: External.
  final int linkTo;

  /// Returns the link positions ( order ).
  final int order;

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        link.hashCode ^
        linkTo.hashCode ^
        order.hashCode;
  }

  /// The link model at YouCan.
  Link({
    required this.id,
    required this.name,
    required this.link,
    required this.linkTo,
    required this.order,
  });

  factory Link.fromMap(Map<String, dynamic> map) {
    return Link(
      id: map['id'] as String,
      name: map['name'] as String,
      link: map['link'] as String,
      linkTo: map['link_to'] as int,
      order: map['order'] as int,
    );
  }

  factory Link.fromJson(String source) =>
      Link.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool operator ==(covariant Link other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.link == link &&
        other.linkTo == linkTo &&
        other.order == order;
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'link': link,
      'link_to': linkTo,
      'order': order,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'Link(id: $id, name: $name, link: $link, linkTo: $linkTo, order: $order)';
  }
}
