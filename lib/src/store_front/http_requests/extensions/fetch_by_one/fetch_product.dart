import 'dart:convert';

import 'package:youcan_flutter_sdk/src/store_front/core/api_links/api_link_builder/api_link_builder.dart';
import 'package:youcan_flutter_sdk/src/store_front/core/api_links/const/const.dart';
import 'package:youcan_flutter_sdk/src/store_front/http_requests/http_requests.dart';

import '../../../core/api_links/products_api_link_builder/products_api_link_builder.dart';
import '../../../core/exception/not_found.dart';
import '../../../core/exception/service_not_available.dart';
import '../../../core/models/product/product.dart';
import 'package:http/http.dart' as http;

extension FetchProductExt on HttpRequests {
  Future<Product> fetchProduct(String id) async {
    final productEndpoint = EndPoints.product(id);
    final apiLinkBuilder = ProductsApiLinkBuilder(
      api: storeApiLink,
      apiEndpoint: productEndpoint,
    );
    print(apiLinkBuilder.fullApiLink);
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
    if (response.statusCode == 200) {
      return Product.fromJson(decodedBody);
    } else if (response.statusCode == 404) {
      throw NotFoundException('Product not found');
    } else if (response.statusCode == 500) {
      throw ServiceNotAvailable('Service is not available');
    } else {
      throw Exception('Failed to load product');
    }
  }
}
