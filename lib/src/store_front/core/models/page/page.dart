// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:collection/collection.dart';

class Page {
  String? id;
  String? name;
  String? slug;
  String? publicUrl;
  String? content;
  String? template;
  DateTime? createdAt;
  PageMeta? meta;

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        slug.hashCode ^
        publicUrl.hashCode ^
        content.hashCode ^
        template.hashCode ^
        createdAt.hashCode;
  }

  Page({
    this.id,
    this.name,
    this.slug,
    this.publicUrl,
    this.content,
    this.template,
    this.createdAt,
    this.meta,
  });

  factory Page.fromJson(Map<String, dynamic> json) => Page(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        slug: json["slug"] == null ? null : json["slug"],
        publicUrl: json["public_url"] == null ? null : json["public_url"],
        content: json["content"] == null ? null : json["content"],
        template: json["template"] == null ? null : json["template"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        meta: json["meta"] == null ? null : PageMeta.fromJson(json["meta"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "slug": slug == null ? null : slug,
        "public_url": publicUrl == null ? null : publicUrl,
        "content": content == null ? null : content,
        "template": template == null ? null : template,
        "created_at": createdAt == null ? null : createdAt?.toIso8601String(),
        "meta": meta == null ? null : meta?.toJson(),
      };

  @override
  bool operator ==(covariant Page other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.slug == slug &&
        other.publicUrl == publicUrl &&
        other.content == content &&
        other.template == template &&
        other.createdAt == createdAt;
  }

  @override
  String toString() {
    return 'Page(id: $id, name: $name, slug: $slug, publicUrl: $publicUrl, content: $content, template: $template, createdAt: $createdAt)';
  }
}

class PageMeta {
  String? title;
  String? description;
  List<String>? images;

  @override
  int get hashCode => title.hashCode ^ description.hashCode ^ images.hashCode;

  PageMeta({
    this.title,
    this.description,
    this.images,
  });

  factory PageMeta.fromJson(Map<String, dynamic> json) => PageMeta(
        title: json["title"] == null ? null : json["title"],
        description: json["description"] == null ? null : json["description"],
        images: json["images"] == null
            ? null
            : List<String>.from(json["images"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "title": title == null ? null : title,
        "description": description == null ? null : description,
        "images":
            images == null ? null : List<dynamic>.from(images!.map((x) => x)),
      };

  @override
  bool operator ==(covariant PageMeta other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other.title == title &&
        other.description == description &&
        listEquals(other.images, images);
  }

  @override
  String toString() =>
      'PageMeta(title: $title, description: $description, images: $images)';
}
