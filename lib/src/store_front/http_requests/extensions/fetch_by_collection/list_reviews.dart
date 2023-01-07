import 'dart:convert';

import 'package:youcan_flutter_sdk/src/store_front/core/api_links/products_api_link_builder/extensions/endpoint.dart';
import 'package:youcan_flutter_sdk/src/store_front/core/api_links/reviews_api_link_builder/extensions/endpoint.dart';

import '../../../core/api_links/endpoints.dart';
import '../../../core/api_links/reviews_api_link_builder/reviews_api_link_builder.dart';
import '../../../core/exception/not_found.dart';
import '../../../core/exception/service_not_available.dart';
import '../../../core/models/review/review.dart';
import '../../http_requests.dart';

import "package:http/http.dart" as http;

extension FetchReviews on HttpRequests {
  Future<List<Review>> listReviews({
    required String productId,
    int? limit,
  }) async {
    final reviewsEndPoint = ReviewsApiLinkBuilder(api: storeApiLink).endpoint(
      EndPoints.productReviews(productId),
    );

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
      final resultList = reviewsAsMaps.map((e) => Review.fromJson(e)).toList();

      return limit == null
          ? resultList.toList()
          : resultList.take(limit).toList();
    } else if (response.statusCode == 404) {
      throw NotFoundException('No reviews found');
    } else if (response.statusCode == 500) {
      throw ServiceNotAvailable('Service is not available');
    } else {
      throw Exception('Failed to load reviews');
    }
  }
}
