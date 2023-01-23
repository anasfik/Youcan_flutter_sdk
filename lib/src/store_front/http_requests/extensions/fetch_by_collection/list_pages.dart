import 'dart:convert';

import 'package:you_can_flutter_sdk/src/store_front/core/api_links/pages_api_link_builder/extensions/endpoint.dart';
import 'package:you_can_flutter_sdk/src/store_front/core/api_links/pages_api_link_builder/extensions/limit.dart';
import 'package:you_can_flutter_sdk/src/store_front/core/api_links/pages_api_link_builder/extensions/search.dart';
import 'package:you_can_flutter_sdk/src/store_front/core/models/page/page.dart';

import '../../../core/api_links/endpoints.dart';
import '../../../core/api_links/pages_api_link_builder/Pages_api_link_builder.dart';
import '../../../core/exception/not_found.dart';
import '../../../core/exception/service_not_available.dart';
import '../../http_requests.dart';

import 'package:http/http.dart' as http;

extension ListPagesExtension on HttpRequests {
  Future<List<Page>> listPages({
    String? search,
    int? limit,
  }) async {
    final reviewsEndPoint = PagesApiLinkBuilder(api: storeApiLink)
        .endpoint(EndPoints.pages())
        .limit(limit)
        .search(search);

    final response = await http.get(
      Uri.parse(reviewsEndPoint.fullApiLink),
      headers: {
        'Content-Type': 'application/x-www-form-urlencoded',
        'Accept': 'application/json',
        'accept-charset': 'utf-8',
      },
    );
    final body = response.body;
    final Map<String, dynamic> decodedBody = jsonDecode(body);

    final reviewsAsMaps = decodedBody['data'] as List;
    if (response.statusCode == 200) {
      final resultList = reviewsAsMaps.map((e) => Page.fromJson(e)).toList();

      return limit == null
          ? resultList.toList()
          : resultList.take(limit).toList();
    } else if (response.statusCode == 404) {
      throw NotFoundException('No pages found');
    } else if (response.statusCode == 500) {
      throw ServiceNotAvailable('Service is not available');
    } else {
      throw Exception('Failed to load pages');
    }
  }
}
