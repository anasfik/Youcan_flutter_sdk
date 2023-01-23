import 'dart:convert';

import 'package:you_can_flutter_sdk/src/store_front/http_requests/http_requests.dart';

import '../../../core/api_links/endpoints.dart';
import '../../../core/api_links/products_api_link_builder/products_api_link_builder.dart';
import '../../../core/exception/not_found.dart';
import '../../../core/exception/service_not_available.dart';
import '../../../core/models/category/category.dart';
import 'package:http/http.dart' as http;

extension FetchCategoryExt on HttpRequests {
  Future<Category> fetchCategory(String id) async {
    final productEndpoint = EndPoints.category(id);
    final apiLinkBuilder = ProductsApiLinkBuilder(
      api: storeApiLink,
      apiEndpoint: productEndpoint,
    );
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
      return Category.fromJson(decodedBody);
    } else if (response.statusCode == 404) {
      throw NotFoundException('Product not found');
    } else if (response.statusCode == 500) {
      throw ServiceNotAvailable('Service is not available');
    } else {
      throw Exception('Failed to load product');
    }
  }
}
