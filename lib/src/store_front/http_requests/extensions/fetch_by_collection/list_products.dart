import 'dart:convert';
import 'package:youcan_flutter_sdk/src/store_front/core/base/api_link_builder_base.dart';
import 'package:youcan_flutter_sdk/src/store_front/core/api_links/products_api_link_builder/extensions/cetegory.dart';
import 'package:youcan_flutter_sdk/src/store_front/core/api_links/products_api_link_builder/extensions/endpoint.dart';
import 'package:youcan_flutter_sdk/src/store_front/core/api_links/products_api_link_builder/extensions/pagination.dart';
import 'package:youcan_flutter_sdk/src/store_front/core/api_links/products_api_link_builder/extensions/search.dart';
import '../../../core/api_links/endpoints.dart';
import '../../../core/api_links/products_api_link_builder/products_api_link_builder.dart';
import '../../../core/exception/not_found.dart';
import '../../../core/exception/service_not_available.dart';
import '../../../core/models/product/product.dart';
import '../../http_requests.dart';
import 'package:http/http.dart' as http;

extension ListProducts on HttpRequests {
  Future<List<Product>> listProducts({
    String? categoryId,
    int? page,
    String? searchQuery = "",
    int? limit,
  }) async {
    ProductsApiLinkBuilder apiLinkBuilder =
        ProductsApiLinkBuilder(api: storeApiLink)
          ..endpoint(
            EndPoints.products(),
          );

    if (categoryId != null) {
      apiLinkBuilder =
          apiLinkBuilder.category(EndPoints.categories(), categoryId);
    }
    if (searchQuery != null) {
      apiLinkBuilder = apiLinkBuilder.search(searchQuery);
    }

    if (page != null) {
      if (searchQuery != null) {
        throw Exception(
          'You can\'t use pagination with search query, please remove one of them',
        );
      }
      apiLinkBuilder = apiLinkBuilder.pagination(page);
    }

    final response = await http.get(
      Uri.parse(apiLinkBuilder.fullApiLink),
      headers: {
        'Content-Type': 'application/x-www-form-urlencoded',
        'Accept': 'application/json',
        'accept-charset': 'utf-8',
      },
    );
    final body = response.body;
    final Map<String, dynamic> decodedBody = jsonDecode(body);

    // I'm not sure about this, but we should get the data with it's key one step more !
    final productsAsMaps =
        decodedBody['data'] is List ? decodedBody['data'] as List : [];
    if (response.statusCode == 200) {
      final resultList =
          productsAsMaps.map((e) => Product.fromJson(e)).toList();

      return limit == null
          ? resultList.toList()
          : resultList.take(limit).toList();
    } else if (response.statusCode == 404) {
      throw NotFoundException('No products found');
    } else if (response.statusCode == 500) {
      throw ServiceNotAvailable('Service is not available');
    } else {
      throw Exception('Failed to load products');
    }
  }
}
