import 'package:youcan_flutter_sdk/src/store_front/core/models/review/review.dart';
import 'package:youcan_flutter_sdk/src/store_front/http_requests/extensions/fetch_by_collection/list_reviews.dart';

import '../reviews.dart';

extension ReviewExtension on Reviews {
  Future<List<Review>> allExtension() async {
    return await httpRequests.listReviews(
      productId: productId,
      limit: limitQuery,
    );
  }
}
