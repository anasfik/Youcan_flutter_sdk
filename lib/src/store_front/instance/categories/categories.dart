// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:youcan_flutter_sdk/src/store_front/instance/categories/extensions/all.dart';
import 'package:youcan_flutter_sdk/src/store_front/instance/categories/extensions/limit.dart';
import 'package:youcan_flutter_sdk/src/store_front/instance/products/products.dart';

import '../../core/base/categories_base.dart';
import '../../core/mixins/requests_client.dart';
import '../../core/models/category/category.dart';

import "package:meta/meta.dart";

class Categories with RequestsClient implements CategoriesBase {
  // this an internal variable used to store the limit query.
  int? _limitQuery;

  Products _internalProductsInstance = Products();

  /// This is the products instance of the category, after specifying the category using `category()`, you can use this instance to access the products api.
  Products get products => _internalProductsInstance;

  /// The limit query is used to limit the number of categories returned from the api, if not specified, the api will return all the categories.
  /// This is set using the `limit()` method.
  int? get limitQuery => _limitQuery;

  @override
  int get hashCode => limitQuery.hashCode;

  set products(Products newProductsInstance) {
    _internalProductsInstance = newProductsInstance;
  }

  Categories._([
    this._limitQuery,
  ]);

// This is a factory constructor used to create a new instance of [Categories], and it was designed to not be instantiated outside the [YouCan] class.
  factory Categories([int? limitQuery]) {
    return Categories._(limitQuery);
  }

  /// This method is used to get all the categories from the api.
  Future<List<Category>> all() async {
    return await allExtension();
  }

  /// This method is used to limit the number of categories returned from the api.
  Categories limit(int limit) {
    return limitExtension(limit);
  }

  /// This method is used to specify the category you want to access the products api using it's id.
  Categories category(String id) {
    final cat = Categories();
    cat.products = Products(categoryId: id);

    return cat;
  }

  @override
  bool operator ==(covariant Categories other) {
    if (identical(this, other)) return true;

    return other.limitQuery == limitQuery;
  }

  @override
  String toString() => 'Categories(limitQuery: $limitQuery)';

  @protected
  Categories copyWith({
    int? limitQuery,
  }) {
    return Categories(
      limitQuery ?? this.limitQuery,
    );
  }
}
