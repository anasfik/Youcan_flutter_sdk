// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:you_can_flutter_sdk/src/store_front/core/api_links/reviews_api_link_builder/extensions/endpoint.dart';
import 'package:you_can_flutter_sdk/src/store_front/core/api_links/reviews_api_link_builder/reviews_api_link_builder.dart';
import 'package:you_can_flutter_sdk/src/store_front/instance/reviews/extensions/limitExtension.dart';
import 'package:you_can_flutter_sdk/src/store_front/instance/reviews/extensions/reviews_extension.dart';

import '../../../../you_can_flutter_sdk.dart';
import '../../core/api_links/endpoints.dart';
import '../../core/base/reviews_base.dart';
import '../../core/mixins/requests_client.dart';
import '../../core/models/review/review.dart';

class Reviews with RequestsClient implements ReviewsBase {
  /// The product id, which you want to get its reviews.
  final String productId;

  /// The limit of reviews you want to get.
  int? limitQuery;

  @override

  /// The endpoint of the reviews.
  String? get endPoint {
    final String storeApiLink = YouCan.instance.storeApiLink;

    return ReviewsApiLinkBuilder(api: storeApiLink)
        .endpoint(EndPoints.productReviews(productId))
        .fullApiLink;
  }

  @override
  int get hashCode => productId.hashCode ^ limitQuery.hashCode;

  Reviews({
    required this.productId,
    this.limitQuery,
  });

  /// Get all reviews of the product.
  Future<List<Review>> all() async {
    return await allExtension();
  }

  /// Get a specific limit number of reviews of the product.
  Reviews limit(int limit) {
    return limitExtension(limit);
  }

  @override
  bool operator ==(covariant Reviews other) {
    if (identical(this, other)) return true;

    return other.productId == productId && other.limitQuery == limitQuery;
  }

  @override
  String toString() =>
      'Reviews(productId: $productId, limitQuery: $limitQuery)';

  Reviews copyWith({
    String? productId,
    int? limitQuery,
  }) {
    return Reviews(
      productId: productId ?? this.productId,
      limitQuery: limitQuery ?? this.limitQuery,
    );
  }
}
