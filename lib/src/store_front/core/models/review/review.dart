// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:collection/collection.dart';

class Review {
  String? id;
  int? ratings;
  String? firstName;
  String? lastName;
  String? content;
  List<String>? imagesUrls;
  String? createdAt;

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
    this.id,
    this.ratings,
    this.firstName,
    this.lastName,
    this.content,
    this.imagesUrls,
    this.createdAt,
  });

  factory Review.fromJson(Map<String, dynamic> json) => Review(
        id: json["id"],
        ratings: json["ratings"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        content: json["content"],
        imagesUrls: List<String>.from(json["images_urls"].map((x) => x)),
        createdAt: json["created_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "ratings": ratings,
        "first_name": firstName,
        "last_name": lastName,
        "content": content,
        "images_urls": List<dynamic>.from((imagesUrls ?? []).map((x) => x)),
        "created_at": createdAt,
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
