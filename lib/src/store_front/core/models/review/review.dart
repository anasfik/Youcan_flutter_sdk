// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:collection/collection.dart';

class Review {
  final String id;
  final int ratings;
  final String firstName;
  final String lastName;
  final String content;
  final List<String> imagesUrls;
  final DateTime createdAt;

  @override
  int get hashCode {
    return id.hashCode ^
        ratings.hashCode ^
        firstName.hashCode ^
        lastName.hashCode ^
        content.hashCode ^
        imagesUrls.hashCode ^
        createdAt.hashCode;
  }

  Review({
    required this.id,
    required this.ratings,
    required this.firstName,
    required this.lastName,
    required this.content,
    required this.imagesUrls,
    required this.createdAt,
  });

  factory Review.fromJson(Map<String, dynamic> json) => Review(
        id: json["id"],
        ratings: json["ratings"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        content: json["content"],
        imagesUrls: List<String>.from(json["images_urls"].map((x) => x)),
        createdAt: DateTime.parse(json["created_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "ratings": ratings,
        "first_name": firstName,
        "last_name": lastName,
        "content": content,
        "images_urls": List<dynamic>.from(imagesUrls.map((x) => x)),
        "created_at": createdAt.toIso8601String(),
      };

  @override
  bool operator ==(covariant Review other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other.id == id &&
        other.ratings == ratings &&
        other.firstName == firstName &&
        other.lastName == lastName &&
        other.content == content &&
        listEquals(other.imagesUrls, imagesUrls) &&
        other.createdAt == createdAt;
  }

  @override
  String toString() {
    return 'Review(id: $id, ratings: $ratings, firstName: $firstName, lastName: $lastName, content: $content, imagesUrls: $imagesUrls, createdAt: $createdAt)';
  }
}
