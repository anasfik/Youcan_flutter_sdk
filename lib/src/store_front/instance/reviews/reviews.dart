import 'package:youcan_flutter_sdk/src/store_front/core/api_links/reviews_api_link_builder/extensions/enfpoint.dart';
import 'package:youcan_flutter_sdk/src/store_front/core/api_links/reviews_api_link_builder/reviews_api_link_builder.dart';
import 'package:youcan_flutter_sdk/src/store_front/instance/reviews/extensions/reviews_extension.dart';

import '../../../../youcan_flutter_sdk.dart';
import '../../core/api_links/const/const.dart';
import '../../core/base/reviews_base.dart';
import '../../core/mixins/requests_client.dart';
import '../../core/models/review/review.dart';

class Reviews with RequestsClient implements ReviewsBase {
  final String productId;

  @override
  String? get endPoint {
    final String storeApiLink = YouCan.instance.storeApiLink;

    return ReviewsApiLinkBuilder(api: storeApiLink)
        .endpoint(EndPoints.productReviews(productId))
        .fullApiLink;
  }

  Reviews({required this.productId});

  Future<List<Review>> all() async {
    return await allExtension();
  }
}
