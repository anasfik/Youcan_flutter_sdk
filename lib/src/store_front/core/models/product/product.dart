// ignore_for_file: public_member_api_docs, sort_constructors_first
// To parse this JSON data, do
//
//     final welcome = welcomeFromMap(jsonString);

import 'dart:convert';

import 'package:meta/meta.dart';

List<Product> welcomeFromMap(String str) =>
    List<Product>.from(json.decode(str).map((x) => Product.fromMap(x)));

String welcomeToMap(List<Product> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class Product {
  Product({
    required this.id,
    required this.name,
    required this.slug,
    required this.publicUrl,
    required this.thumbnail,
    required this.description,
    required this.price,
    required this.compareAtPrice,
    required this.hasVariants,
    required this.variantsCount,
    required this.variantOptions,
    required this.trackInventory,
    required this.meta,
    required this.hasRelatedProducts,
    required this.relatedProducts,
    required this.images,
  });

  final String id;
  final String name;
  final String slug;
  final String publicUrl;
  final String thumbnail;
  final String description;
  final double price;
  final dynamic compareAtPrice;
  final bool hasVariants;
  final int variantsCount;
  final List<dynamic> variantOptions;
  final bool trackInventory;
  final Meta meta;
  final bool hasRelatedProducts;
  final List<dynamic> relatedProducts;
  final List<WelcomeImage> images;

  factory Product.fromMap(Map<String, dynamic> json) => Product(
        id: json["id"],
        name: json["name"],
        slug: json["slug"],
        publicUrl: json["public_url"],
        thumbnail: json["thumbnail"],
        description: json["description"],
        price: json["price"].toDouble(),
        compareAtPrice: json["compare_at_price"],
        hasVariants: json["has_variants"],
        variantsCount: json["variants_count"],
        variantOptions:
            List<dynamic>.from(json["variant_options"].map((x) => x)),
        trackInventory: json["track_inventory"],
        meta: Meta.fromMap(json["meta"]),
        hasRelatedProducts: json["has_related_products"],
        relatedProducts:
            List<dynamic>.from(json["related_products"].map((x) => x)),
        images: List<WelcomeImage>.from(
            json["images"].map((x) => WelcomeImage.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "slug": slug,
        "public_url": publicUrl,
        "thumbnail": thumbnail,
        "description": description,
        "price": price,
        "compare_at_price": compareAtPrice,
        "has_variants": hasVariants,
        "variants_count": variantsCount,
        "variant_options": List<dynamic>.from(variantOptions.map((x) => x)),
        "track_inventory": trackInventory,
        "meta": meta.toMap(),
        "has_related_products": hasRelatedProducts,
        "related_products": List<dynamic>.from(relatedProducts.map((x) => x)),
        "images": List<dynamic>.from(images.map((x) => x.toMap())),
      };

  @override
  String toString() {
    return 'Product(id: $id, name: $name, slug: $slug, publicUrl: $publicUrl, thumbnail: $thumbnail, description: $description, price: $price, compareAtPrice: $compareAtPrice, hasVariants: $hasVariants, variantsCount: $variantsCount, variantOptions: $variantOptions, trackInventory: $trackInventory, meta: $meta, hasRelatedProducts: $hasRelatedProducts, relatedProducts: $relatedProducts, images: $images)';
  }
}

class WelcomeImage {
  WelcomeImage({
    required this.id,
    required this.name,
    required this.type,
    required this.url,
    required this.order,
    required this.variations,
  });

  final String id;
  final String name;
  final int type;
  final String url;
  final int order;
  final Variations variations;

  factory WelcomeImage.fromMap(Map<String, dynamic> json) => WelcomeImage(
        id: json["id"],
        name: json["name"],
        type: json["type"],
        url: json["url"],
        order: json["order"],
        variations: Variations.fromMap(json["variations"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "type": type,
        "url": url,
        "order": order,
        "variations": variations.toMap(),
      };
}

class Variations {
  Variations({
    required this.original,
    required this.sm,
    required this.md,
    required this.lg,
  });

  final String original;
  final String sm;
  final String md;
  final String lg;

  factory Variations.fromMap(Map<String, dynamic> json) => Variations(
        original: json["original"],
        sm: json["sm"],
        md: json["md"],
        lg: json["lg"],
      );

  Map<String, dynamic> toMap() => {
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
  });

  final String title;
  final String description;
  final List<MetaImage> images;

  factory Meta.fromMap(Map<String, dynamic> json) => Meta(
        title: json["title"],
        description: json["description"],
        images: List<MetaImage>.from(
            json["images"].map((x) => MetaImage.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "title": title,
        "description": description,
        "images": List<dynamic>.from(images.map((x) => x.toMap())),
      };
}

class MetaImage {
  MetaImage({
    required this.path,
    required this.link,
  });

  final String path;
  final String link;

  factory MetaImage.fromMap(Map<String, dynamic> json) => MetaImage(
        path: json["path"],
        link: json["link"],
      );

  Map<String, dynamic> toMap() => {
        "path": path,
        "link": link,
      };
}
