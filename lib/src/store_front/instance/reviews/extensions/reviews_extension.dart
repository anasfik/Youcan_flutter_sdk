import 'package:youcan_flutter_sdk/src/store_front/core/models/review/review.dart';
import 'package:youcan_flutter_sdk/src/store_front/http_requests/extensions/fetch_by_collection/fetch_reviews.dart';

import '../reviews.dart';

extension ReviewExtension on Reviews {
  Future<List<Review>> allExtension() async {
    return await httpRequests.fetchReviews(
      productId: productId,
      limit: limitQuery,
    );
  }
}
