import 'dart:convert';

class Category {
  final String id;
  final String name;
  final String image;
  final String slug;
  final bool showOnCollection;
  final String publicUrl;
  final String description;
  final bool hasParent;
  final dynamic parentId;
  final bool isDefault;
  final Images images;
  final int depth;
  final Meta meta;
  final DateTime createdAt;
  final DateTime updatedAt;
  final dynamic deletedAt;
  final List<dynamic> parent;

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
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
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
        "images": images.toJson(),
        "depth": depth,
        "meta": meta.toJson(),
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "deleted_at": deletedAt,
        "parent": List<dynamic>.from(parent.map((x) => x)),
      };
}

class Images {
  Images({
    required this.original,
    required this.sm,
    required this.md,
    required this.lg,
  });

  final String original;
  final String sm;
  final String md;
  final String lg;

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
  Meta({
    required this.title,
    required this.description,
    required this.images,
    required this.imagesUrls,
  });

  final String title;
  final String description;
  final List<dynamic> images;
  final List<dynamic> imagesUrls;

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        title: json["title"],
        description: json["description"],
        images: List<dynamic>.from(json["images"].map((x) => x)),
        imagesUrls: List<dynamic>.from(json["images_urls"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "description": description,
        "images": List<dynamic>.from(images.map((x) => x)),
        "images_urls": List<dynamic>.from(imagesUrls.map((x) => x)),
      };
}
