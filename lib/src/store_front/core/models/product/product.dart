import 'package:collection/collection.dart';

import 'package:youcan_flutter_sdk/src/store_front/core/mixins/requests_client.dart';
import 'package:youcan_flutter_sdk/src/store_front/instance/reviews/reviews.dart';

class Product with RequestsClient {
  final String id;
  final String? name;
  final String? slug;
  final String? publicUrl;
  final String? thumbnail;
  final String? description;
  final double? price;
  final dynamic? compareAtPrice;
  final bool? hasVariants;
  final int? variantsCount;
  final List<VariantOption>? variantOptions;
  final bool? trackInventory;
  final ProductMeta? meta;
  final List<Image>? images;

  Reviews get reviews => Reviews(productId: id);

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        slug.hashCode ^
        publicUrl.hashCode ^
        thumbnail.hashCode ^
        description.hashCode ^
        price.hashCode ^
        compareAtPrice.hashCode ^
        hasVariants.hashCode ^
        variantsCount.hashCode ^
        variantOptions.hashCode ^
        trackInventory.hashCode ^
        meta.hashCode ^
        images.hashCode;
  }

  Product({
    required this.id,
    this.name,
    this.slug,
    this.publicUrl,
    this.thumbnail,
    this.description,
    this.price,
    this.compareAtPrice,
    this.hasVariants,
    this.variantsCount,
    this.variantOptions,
    this.trackInventory,
    this.meta,
    this.images,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
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
        variantOptions: List<VariantOption>.from(
          json["variant_options"].map(
            (x) => VariantOption.fromJson(x),
          ),
        ),
        trackInventory: json["track_inventory"],
        meta: ProductMeta.fromJson(json["meta"]),
        images: List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
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
        "variant_options":
            List<dynamic>.from((variantOptions ?? []).map((x) => x.toJson())),
        "track_inventory": trackInventory,
        "meta": meta?.toJson(),
        "images": List<dynamic>.from((images ?? []).map((x) => x.toJson())),
      };

  @override
  bool operator ==(covariant Product other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other.id == id &&
        other.name == name &&
        other.slug == slug &&
        other.publicUrl == publicUrl &&
        other.thumbnail == thumbnail &&
        other.description == description &&
        other.price == price &&
        other.compareAtPrice == compareAtPrice &&
        other.hasVariants == hasVariants &&
        other.variantsCount == variantsCount &&
        listEquals(other.variantOptions, variantOptions) &&
        other.trackInventory == trackInventory &&
        other.meta == meta &&
        listEquals(other.images, images);
  }

  @override
  String toString() {
    return 'Product(id: $id, name: $name, slug: $slug, publicUrl: $publicUrl, thumbnail: $thumbnail, description: $description, price: $price, compareAtPrice: $compareAtPrice, hasVariants: $hasVariants, variantsCount: $variantsCount, variantOptions: $variantOptions, trackInventory: $trackInventory, meta: $meta, images: $images)';
  }
}

class Image {
  String? id;
  String? name;
  int? type;
  String? url;
  int? order;
  Variations? variations;

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        type.hashCode ^
        url.hashCode ^
        order.hashCode ^
        variations.hashCode;
  }

  Image({
    this.id,
    this.name,
    this.type,
    this.url,
    this.order,
    this.variations,
  });

  factory Image.fromJson(Map<String, dynamic> json) => Image(
        id: json["id"],
        name: json["name"],
        type: json["type"],
        url: json["url"],
        order: json["order"],
        variations: Variations.fromJson(json["variations"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "type": type,
        "url": url,
        "order": order,
        "variations": variations?.toJson(),
      };

  @override
  bool operator ==(covariant Image other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.type == type &&
        other.url == url &&
        other.order == order &&
        other.variations == variations;
  }

  @override
  String toString() {
    return 'Image(id: $id, name: $name, type: $type, url: $url, order: $order, variations: $variations)';
  }
}

class Variations {
  final String original;
  final String sm;
  final String md;
  final String lg;

  Variations({
    required this.original,
    required this.sm,
    required this.md,
    required this.lg,
  });
  factory Variations.fromJson(Map<String, dynamic> json) => Variations(
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

class ProductMeta {
  final String title;
  final String description;
  final List<dynamic> images;

  @override
  int get hashCode => title.hashCode ^ description.hashCode ^ images.hashCode;

  ProductMeta({
    required this.title,
    required this.description,
    required this.images,
  });

  factory ProductMeta.fromJson(Map<String, dynamic> json) => ProductMeta(
        title: json["title"],
        description: json["description"],
        images: List<dynamic>.from(json["images"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "description": description,
        "images": List<dynamic>.from(images.map((x) => x)),
      };

  @override
  bool operator ==(covariant ProductMeta other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other.title == title &&
        other.description == description &&
        listEquals(other.images, images);
  }

  @override
  String toString() =>
      'ProductMeta(title: $title, description: $description, images: $images)';
}

class VariantOption {
  String? name;
  int? type;
  List<String>? values;

  @override
  int get hashCode => name.hashCode ^ type.hashCode ^ values.hashCode;

  VariantOption({
    this.name,
    this.type,
    this.values,
  });

  factory VariantOption.fromJson(Map<String, dynamic> json) => VariantOption(
        name: json["name"],
        type: json["type"],
        values: List<String>.from(json["values"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "type": type,
        "values": List<dynamic>.from((values ?? []).map((x) => x)),
      };

  @override
  bool operator ==(covariant VariantOption other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other.name == name &&
        other.type == type &&
        listEquals(other.values, values);
  }

  @override
  String toString() =>
      'VariantOption(name: $name, type: $type, values: $values)';
}
