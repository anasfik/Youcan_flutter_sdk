import 'package:youcan_flutter_sdk/src/store_front/core/api_links/products_api_link_builder/extensions/cetegory.dart';
import 'package:youcan_flutter_sdk/src/store_front/core/api_links/products_api_link_builder/extensions/endpoint.dart';
import 'package:youcan_flutter_sdk/src/store_front/core/api_links/products_api_link_builder/extensions/pagination.dart';
import 'package:youcan_flutter_sdk/src/store_front/core/api_links/products_api_link_builder/extensions/search.dart';
import 'package:youcan_flutter_sdk/src/store_front/instance/products/extensions/all.dart';
import 'package:youcan_flutter_sdk/src/store_front/instance/products/extensions/limit.dart';
import 'package:youcan_flutter_sdk/src/store_front/instance/products/extensions/one.dart';
import 'package:youcan_flutter_sdk/src/store_front/instance/products/extensions/pagination.dart';
import 'package:youcan_flutter_sdk/src/store_front/instance/products/extensions/search.dart';
import '../../core/api_links/const/const.dart';
import '../../core/api_links/products_api_link_builder/products_api_link_builder.dart';
import '../../core/base/products_base.dart';
import '../../core/mixins/requests_client.dart';
import '../../core/models/product/product.dart';
import '../youcan_instance.dart';

class Products with RequestsClient implements ProductsBase<Product> {
  /// This is the page number of the products.
  int? page;

  /// This is the search query of the products.
  String? searchQuery;

  /// This is the limit query of the products.
  int? limitQuery;

  /// This is the category id of the products, if you want to get the products of a specific category.
  /// if this is not set, then the products will be from all categories.
  String? id;

  /// This is the endpoint used to get the data of the products for your query.
  String? get endPoint {
    final String storeApiLink = YouCan.instance.storeApiLink;

    return ProductsApiLinkBuilder(api: storeApiLink)
        .category(EndPoints.categories(), id)
        .endpoint(EndPoints.products())
        .search(searchQuery)
        .pagination(page)
        .fullApiLink;
  }

  Products._({this.id});

  factory Products({String? categoryId}) {
    return Products._(id: categoryId);
  }

  /// This method is used to get the products of a specific category.
  Products category(String id) {
    return Products._(id: id);
  }

  /// This method is used to get all the products.
  Future<List<Product>> all() async {
    return await allExtension();
  }

  /// Returns the product with the given [productId] as a [Product].
  Future<Product> one(String productId) async {
    return await oneExtension(productId);
  }

  /// This method is used to search for products.
  Products search(String searchQuery) {
    return searchExtension(searchQuery);
  }

  /// This method is used to paginate the products, as from the API.
  Products pagination(int page) {
    return paginationExtension(page);
  }

  /// This is an internal method that is used to limit the number of products.
  Products limit(int limitQuery) {
    return limitExtension(limitQuery);
  }
}
