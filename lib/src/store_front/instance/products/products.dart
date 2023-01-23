import 'package:you_can_flutter_sdk/src/store_front/core/api_links/products_api_link_builder/extensions/cetegory.dart';
import 'package:you_can_flutter_sdk/src/store_front/core/api_links/products_api_link_builder/extensions/endpoint.dart';
import 'package:you_can_flutter_sdk/src/store_front/core/api_links/products_api_link_builder/extensions/pagination.dart';
import 'package:you_can_flutter_sdk/src/store_front/core/api_links/products_api_link_builder/extensions/search.dart';
import 'package:you_can_flutter_sdk/src/store_front/instance/products/extensions/all.dart';
import 'package:you_can_flutter_sdk/src/store_front/instance/products/extensions/limit.dart';
import 'package:you_can_flutter_sdk/src/store_front/instance/products/extensions/one.dart';
import 'package:you_can_flutter_sdk/src/store_front/instance/products/extensions/pagination.dart';
import 'package:you_can_flutter_sdk/src/store_front/instance/products/extensions/search.dart';
import '../../core/api_links/endpoints.dart';
import '../../core/api_links/products_api_link_builder/products_api_link_builder.dart';
import '../../core/base/products_base.dart';
import '../../core/mixins/requests_client.dart';
import '../../core/models/product/product.dart';
import '../you_can_instance.dart';

class Products with RequestsClient implements ProductsBase<Product> {
  /// This is the page number of the products.
  /// if this is not set, then the products will be from the first page by default as from the Rest API.
  ///
  int? page;

  /// This is the search query of the products.
  /// if this is not set, then the products will be from all categories.
  String? searchQuery;

  /// This is the limit query of the products.
  /// if this is not set, then the products will not be limited and will return all the products.
  /// if this is set, the products number will be limited.
  /// Note: the Rest API expose a limit query from tha path of the endpoint, but this is set using the [Iterable.limit] method.
  int? limitQuery;

  /// This is the category id of the products, if you want to get the products of a specific category.
  /// if this is not set, then the products will be from all categories.
  /// Note: this is not the category name, but the category id.
  /// Example: if you want to get the products of the category with the name "Clothes", then you will have to get the category id from the [Categories] class.
  /// Example:
  /// ```dart
  /// final String id = await YouCan.instance.categories.one('Clothes').then((value) => value.id);
  /// ```
  ///  Then use the [id] to get the products of the category with the name "Clothes".
  /// Example:
  /// ```dart
  /// await YouCan.instance.products.category(clothesCategoryId).all();
  /// ```
  String? id;

  /// This is the endpoint used to get the data of the products for your query.
  /// Example:
  /// ```dart
  /// YouCan.instance.products.endpoint;
  /// YouCan.instance.products.category(clothesCategoryId).endpoint;
  /// ```
  String? get endPoint {
    final String storeApiLink = YouCan.instance.storeApiLink;

    return ProductsApiLinkBuilder(api: storeApiLink)
        .category(EndPoints.categories(), id)
        .endpoint(EndPoints.products())
        .search(searchQuery)
        .pagination(page)
        .fullApiLink;
  }

  /// This is the constructor of the [Products] class, it is used to initialize the [Products] class, it is private.
  /// calling the factory constructor will always return it, for preventing resources lost resulting by calling multiple instances.
  Products._({this.id});

  /// This is the factory constructor of the [Products] class, it is used to initialize the [Products] class.
  /// calling the factory constructor will always return the same instance.
  factory Products({String? categoryId}) {
    return Products._(id: categoryId);
  }

  /// This method is used to get the products of a specific category.
  /// Example:
  /// ```dart
  /// await YouCan.instance.products.category(clothesCategoryId).all();
  /// ```
  /// Note: this is not the category name, but the category id.
  Products category(String id) {
    return Products._(id: id);
  }

  /// This method is used to get all the products.
  /// Example:
  /// ```dart
  /// await YouCan.instance.products.all();
  /// ```
  Future<List<Product>> all() async {
    return await allExtension();
  }

  /// Returns the product with the given [productId] as a [Product].
  /// Example:
  /// ```dart
  /// await YouCan.instance.products.one('productId');
  /// ```
  Future<Product> one(String productId) async {
    return await oneExtension(productId);
  }

  /// This method is used to search for products.
  /// Example:
  /// ```dart
  /// await YouCan.instance.products.search('searchQuery').all();
  /// ```
  Products search(String searchQuery) {
    return searchExtension(searchQuery);
  }

  /// This method is used to paginate the products, as from the API.
  /// Example:
  /// ```dart
  /// await YouCan.instance.products.pagination(2).all();
  /// ```
  /// Note: the default page number is 1 (from the Rest API).
  Products pagination(int page) {
    return paginationExtension(page);
  }

  /// This is an internal method that is used to limit the number of products.
  /// Example:
  /// ```dart
  /// await YouCan.instance.products.limit(10).all();
  /// ```
  Products limit(int limitQuery) {
    return limitExtension(limitQuery);
  }
}
