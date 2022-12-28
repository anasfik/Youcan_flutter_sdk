import 'dart:convert';

import 'package:youcan_flutter_sdk/src/store_front/core/api_links/api_link_builder/extensions/endpoint.dart';
import 'package:youcan_flutter_sdk/src/store_front/core/api_links/api_link_builder/extensions/search.dart';

import '../../core/api_links/api_link_builder/api_link_builder.dart';
import '../../core/api_links/const/const.dart';
import '../../core/exception/not_found.dart';
import '../../core/exception/service_not_available.dart';
import '../../core/models/product/product.dart';
import '../http_requests.dart';
import 'package:http/http.dart' as http;

extension ListProducts on HttpRequests {
  Future<List<Product>> listProducts({
    String searchQuery = "",
  }) async {
    final productsEndPoint = ApiLinkBuilder(api: storeApiLink)
        .endpoint(EndPoints.products())
        .search(searchQuery);

    final response = await http.get(
      Uri.parse(productsEndPoint.fullApiLink),
      headers: {
        'Content-Type': 'application/x-www-form-urlencoded',
        'Accept': 'application/json',
        'accept-charset': 'utf-8',
      },
    );
    final body = response.body;
    final Map<String, dynamic> decodedBody = jsonDecode(body);

    // I'm not sure about this, but we should get the data with it's key one step more !
    List<dynamic> productsAsMaps = decodedBody['data'];
    if (response.statusCode == 200) {
      return productsAsMaps.map((e) => Product.fromJson(e)).toList();
    } else if (response.statusCode == 404) {
      throw NotFoundException('No products found');
    } else if (response.statusCode == 500) {
      throw ServiceNotAvailable('Service is not available');
    } else {
      throw Exception('Failed to load products');
    }
  }
}
