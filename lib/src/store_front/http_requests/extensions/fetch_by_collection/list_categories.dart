import 'dart:convert';
import 'package:youcan_flutter_sdk/src/store_front/core/api_links/products_api_link_builder/extensions/endpoint.dart';
import 'package:youcan_flutter_sdk/src/store_front/core/models/category/category.dart';
import 'package:youcan_flutter_sdk/src/store_front/http_requests/http_requests.dart';
import '../../../core/api_links/const/const.dart';
import 'package:http/http.dart' as http;
import '../../../core/api_links/products_api_link_builder/products_api_link_builder.dart';
import '../../../core/exception/not_found.dart';
import '../../../core/exception/service_not_available.dart';

extension ListCategoriesExt on HttpRequests {
  Future<List<Category>> listCategories({
    int? limit,
  }) async {
    final categoriesEndPoint = ProductsApiLinkBuilder(api: storeApiLink)
        .endpoint(EndPoints.categories());

    final response = await http.get(
      Uri.parse(categoriesEndPoint.fullApiLink),
      headers: {
        'Content-Type': 'application/x-www-form-urlencoded',
        'Accept': 'application/json',
        'accept-charset': 'utf-8',
      },
    );
    final body = response.body;
    final Map<String, dynamic> decodedBody = jsonDecode(body);

    final categoriesAsMaps = decodedBody['data'] as List;
    if (response.statusCode == 200) {
      final resultList = categoriesAsMaps.map((e) => Category.fromJson(e));

      return limit == null
          ? resultList.toList()
          : resultList.take(limit).toList();
    } else if (response.statusCode == 404) {
      throw NotFoundException('No categories found');
    } else if (response.statusCode == 500) {
      throw ServiceNotAvailable('Service is not available');
    } else {
      throw Exception('Failed to load categories');
    }
  }
}
