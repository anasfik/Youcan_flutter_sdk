// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:collection/collection.dart';

class Category {
  final String? id;
  final String? name;
  final String? image;
  final String? slug;
  final bool? showOnCollection;
  final String? publicUrl;
  final String? description;
  final bool? hasParent;
  final dynamic? parentId;
  final bool? isDefault;
  final Images? images;
  final int? depth;
  final Meta? meta;
  final String? createdAt;
  final String? updatedAt;
  final dynamic? deletedAt;
  final List<dynamic>? parent;

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        image.hashCode ^
        slug.hashCode ^
        showOnCollection.hashCode ^
        publicUrl.hashCode ^
        description.hashCode ^
        hasParent.hashCode ^
        parentId.hashCode ^
        isDefault.hashCode ^
        images.hashCode ^
        depth.hashCode ^
        meta.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode ^
        deletedAt.hashCode ^
        parent.hashCode;
  }

  Category({
    required this.id,
    required this.name,
    required this.image,
    required this.slug,
    required this.showOnCollection,
    required this.publicUrl,
    required this.description,
    required this.hasParent,
    required this.parentId,
    required this.isDefault,
    required this.images,
    required this.depth,
    required this.meta,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
    required this.parent,
  });

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"],
        name: json["name"],
        image: json["image"],
        slug: json["slug"],
        showOnCollection: json["show_on_collection"],
        publicUrl: json["public_url"],
        description: json["description"],
        hasParent: json["has_parent"],
        parentId: json["parent_id"],
        isDefault: json["is_default"],
        images: Images.fromJson(json["images"]),
        depth: json["depth"],
        meta: Meta.fromJson(json["meta"]),
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        deletedAt: json["deleted_at"],
        parent: List<dynamic>.from(json["parent"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "image": image,
        "slug": slug,
        "show_on_collection": showOnCollection,
        "public_url": publicUrl,
        "description": description,
        "has_parent": hasParent,
        "parent_id": parentId,
        "is_default": isDefault,
        "images": images?.toJson(),
        "depth": depth,
        "meta": meta?.toJson(),
        "created_at": createdAt,
        "updated_at": updatedAt,
        "deleted_at": deletedAt,
        "parent": List<dynamic>.from(parent ?? []),
      };

  @override
  bool operator ==(covariant Category other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other.id == id &&
        other.name == name &&
        other.image == image &&
        other.slug == slug &&
        other.showOnCollection == showOnCollection &&
        other.publicUrl == publicUrl &&
        other.description == description &&
        other.hasParent == hasParent &&
        other.parentId == parentId &&
        other.isDefault == isDefault &&
        other.images == images &&
        other.depth == depth &&
        other.meta == meta &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.deletedAt == deletedAt &&
        listEquals(other.parent, parent);
  }

  @override
  String toString() {
    return 'Category(id: $id, name: $name, image: $image, slug: $slug, showOnCollection: $showOnCollection, publicUrl: $publicUrl, description: $description, hasParent: $hasParent, parentId: $parentId, isDefault: $isDefault, images: $images, depth: $depth, meta: $meta, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, parent: $parent)';
  }
}

class Images {
  final String? original;
  final String? sm;
  final String? md;
  final String? lg;

  Images({
    required this.original,
    required this.sm,
    required this.md,
    required this.lg,
  });

  factory Images.fromJson(Map<String, dynamic> json) => Images(
        original: json["original"],
        sm: json["sm"],
        md: json["md"],
        lg: json["lg"],
      );

  Map<String, dynamic> toJson() => {
        "original": original,
        "sm": sm,
        "md": md,
        "lg": lg,
      };
}

class Meta {
  final String? title;
  final String? description;
  final List<dynamic>? images;
  final List<dynamic>? imagesUrls;

  Meta({
    required this.title,
    required this.description,
    required this.images,
    required this.imagesUrls,
  });

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        title: json["title"],
        description: json["description"],
        images: List<dynamic>.from(json["images"].map((x) => x)),
        imagesUrls: List<dynamic>.from(json["images_urls"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "description": description,
        "images": List<dynamic>.from(images ?? []),
        "images_urls": List<dynamic>.from(imagesUrls ?? []),
      };
}
