// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:youcan_flutter_sdk/src/store_front/core/api_links/reviews_api_link_builder/extensions/enfpoint.dart';
import 'package:youcan_flutter_sdk/src/store_front/core/api_links/reviews_api_link_builder/reviews_api_link_builder.dart';
import 'package:youcan_flutter_sdk/src/store_front/instance/reviews/extensions/limitExtension.dart';
import 'package:youcan_flutter_sdk/src/store_front/instance/reviews/extensions/reviews_extension.dart';

import '../../../../youcan_flutter_sdk.dart';
import '../../core/api_links/const/const.dart';
import '../../core/base/reviews_base.dart';
import '../../core/mixins/requests_client.dart';
import '../../core/models/review/review.dart';

class Reviews with RequestsClient implements ReviewsBase {
  final String productId;
  int? limitQuery;
  @override
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

  Future<List<Review>> all() async {
    return await allExtension();
  }

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
