// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:collection/collection.dart';

import 'product_meta.dart';

/// The product model at YouCan.
class Product {
  /// Returns identifier of product ( UUID ).
  final String id;

  /// Returns the product name.
  final String name;

  /// Returns the product slug.
  final String slug;

  /// Returns the product description.
  final String description;

  /// Returns the product price.
  final double price;

  /// Returns the product compare at price.
  final double? compareAtPrice;

  /// Returns the product cost price.
  final double? costPrice;

  /// Returns the product visibility.
  final bool visibility;

  /// Returns if the product is tracking inventory.
  final bool trackInventory;

  /// Returns if the product has variants.
  final bool hasVariants;

  /// Returns the product meta.
  final ProductMeta meta;

  /// Returns the product variant options.
  final List variantOptions;

  /// Returns the product created at.
  final String createdAt;

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        slug.hashCode ^
        description.hashCode ^
        price.hashCode ^
        compareAtPrice.hashCode ^
        costPrice.hashCode ^
        visibility.hashCode ^
        trackInventory.hashCode ^
        hasVariants.hashCode ^
        meta.hashCode ^
        variantOptions.hashCode ^
        createdAt.hashCode;
  }

  /// The product model at YouCan.
  Product({
    required this.id,
    required this.name,
    required this.slug,
    required this.description,
    required this.price,
    this.compareAtPrice,
    this.costPrice,
    required this.visibility,
    required this.trackInventory,
    required this.hasVariants,
    required this.meta,
    required this.variantOptions,
    required this.createdAt,
  });

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map['id'] as String,
      name: map['name'] as String,
      slug: map['slug'] as String,
      description: map['description'] as String,
      price: map['price'] as double,
      compareAtPrice: map['compare_at_price'] != null
          ? map['compare_at_price'] as double
          : null,
      costPrice: map['cost_price'] != null ? map['cost_price'] as double : null,
      visibility: map['visibility'] as bool,
      trackInventory: map['track_inventory'] as bool,
      hasVariants: map['has_variants'] as bool,
      meta: ProductMeta.fromMap(map['meta'] as Map<String, dynamic>),
      variantOptions: List.from((map['variant_options'] as List)),
      createdAt: map['created_at'] as String,
    );
  }

  factory Product.fromJson(String source) =>
      Product.fromMap(json.decode(source) as Map<String, dynamic>);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'slug': slug,
      'description': description,
      'price': price,
      'compare_at_price': compareAtPrice,
      'cost_price': costPrice,
      'visibility': visibility,
      'track_inventory': trackInventory,
      'has_variants': hasVariants,
      'meta': meta.toMap(),
      'variant_options': variantOptions,
      'created_at': createdAt,
    };
  }

  String toJson() => json.encode(toMap());
  @override
  bool operator ==(covariant Product other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other.id == id &&
        other.name == name &&
        other.slug == slug &&
        other.description == description &&
        other.price == price &&
        other.compareAtPrice == compareAtPrice &&
        other.costPrice == costPrice &&
        other.visibility == visibility &&
        other.trackInventory == trackInventory &&
        other.hasVariants == hasVariants &&
        other.meta == meta &&
        listEquals(other.variantOptions, variantOptions) &&
        other.createdAt == createdAt;
  }

  @override
  String toString() {
    return 'Product(id: $id, name: $name, slug: $slug, description: $description, price: $price, compareAtPrice: $compareAtPrice, costPrice: $costPrice, visibility: $visibility, trackInventory: $trackInventory, hasVariants: $hasVariants, meta: $meta, variantOptions: $variantOptions, createdAt: $createdAt)';
  }
}
