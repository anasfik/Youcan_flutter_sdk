import 'package:youcan_flutter_sdk/src/store_front/core/api_links/api_link_builder/extensions/endpoint.dart';
import 'package:youcan_flutter_sdk/src/store_front/core/api_links/api_link_builder/extensions/pagination.dart';
import 'package:youcan_flutter_sdk/src/store_front/core/api_links/api_link_builder/extensions/search.dart';
import 'package:youcan_flutter_sdk/src/store_front/instance/products/extensions/all.dart';
import 'package:youcan_flutter_sdk/src/store_front/instance/products/extensions/limit.dart';
import 'package:youcan_flutter_sdk/src/store_front/instance/products/extensions/one.dart';
import 'package:youcan_flutter_sdk/src/store_front/instance/products/extensions/pagination.dart';
import 'package:youcan_flutter_sdk/src/store_front/instance/products/extensions/search.dart';

import '../../../../youcan_flutter_sdk.dart';
import '../../core/api_links/api_link_builder/api_link_builder.dart';
import '../../core/api_links/const/const.dart';
import '../../core/models/product/product.dart';
import '../youcan_instance.dart';

class Products with RequestsClient implements ApiEntriesBase<Product> {
  int? page;
  String? searchQuery;
  int? limitQuery;

  /// This is the endpoint used to get the data of the products for your query.
  String? get endPoint {
    final String storeApiLink = YouCan.instance.storeApiLink;

    return ApiLinkBuilder(api: storeApiLink)
        .endpoint(EndPoints.products())
        .search(searchQuery)
        .pagination(page)
        .fullApiLink;
  }

  /// This method is used to get all the products.
  Future<List<Product>> all() async {
    return await allExtension();
  }

  /// This method is used to search for products.
  Future<List<Product>> search(String searchQuery) async {
    return await searchExtension(searchQuery);
  }

  /// Returns the product with the given [productId] as a [Product].
  Future<Product> one(String productId) async {
    return await oneExtension(productId);
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
