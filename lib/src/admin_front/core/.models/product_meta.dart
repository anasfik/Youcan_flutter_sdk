import 'dart:convert';
import 'package:collection/collection.dart';

class ProductMeta {
  final String title;
  final String description;
  final List images;

  @override
  int get hashCode => title.hashCode ^ description.hashCode ^ images.hashCode;

  ProductMeta({
    required this.title,
    required this.description,
    required this.images,
  });

  factory ProductMeta.fromMap(Map<String, dynamic> map) {
    return ProductMeta(
      title: map['title'] as String,
      description: map['description'] as String,
      images: List.from(
        (map['images'] as List),
      ),
    );
  }

  factory ProductMeta.fromJson(String source) =>
      ProductMeta.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool operator ==(covariant ProductMeta other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other.title == title &&
        other.description == description &&
        listEquals(other.images, images);
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'description': description,
      'images': images,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() =>
      'ProductMeta(title: $title, description: $description, images: $images)';
}
