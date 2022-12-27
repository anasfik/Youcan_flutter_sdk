// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:collection/collection.dart';

import 'link.dart';

/// The menu model at YouCan.
class Menu {
  /// Returns identifier ( UUID ) of the menu.
  final String id;

  /// Returns the menu name.
  final String name;

  /// Returns the menu slug.
  final String slug;

  /// Returns if this is the default menu.
  final bool isDefault;

  /// Return a `List<Link>` of the menu links.
  final List<Link>? links;

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        slug.hashCode ^
        isDefault.hashCode ^
        links.hashCode;
  }

  /// The menu model at YouCan.
  Menu({
    required this.id,
    required this.name,
    required this.slug,
    required this.isDefault,
    this.links,
  });

  factory Menu.fromMap(Map<String, dynamic> map) {
    return Menu(
      id: map['id'] as String,
      name: map['name'] as String,
      slug: map['slug'] as String,
      isDefault: map['is_default'] as bool,
      links: map['links'] != null
          ? List<Link>.from(
              (map['links'] as List<int>).map<Link?>(
                (x) => Link.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
    );
  }

  factory Menu.fromJson(String source) =>
      Menu.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Menu(id: $id, name: $name, slug: $slug, isDefault: $isDefault, links: $links)';
  }

  @override
  bool operator ==(covariant Menu other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other.id == id &&
        other.name == name &&
        other.slug == slug &&
        other.isDefault == isDefault &&
        listEquals(other.links, links);
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'slug': slug,
      'is_default': isDefault,
      'links':
          links != null ? links?.map((Link x) => x.toMap()).toList() : null,
    };
  }

  String toJson() => json.encode(toMap());
}
