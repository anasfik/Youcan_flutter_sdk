// ignore_for_file: public_member_api_docs, sort_constructors_first
import '../../base/api_link_builder_base.dart';

class ReviewsApiLinkBuilder implements ApiLinkBuilder {
  final String api;
  final String reviewsEndPoint;

  @override

  /// This is the full api link, it's used to access the api.
  String get fullApiLink {
    final result = "$api$reviewsEndPoint";

    return result;
  }

  @override
  int get hashCode => api.hashCode ^ reviewsEndPoint.hashCode;

  ReviewsApiLinkBuilder({
    required this.api,
    this.reviewsEndPoint = "",
  });

  ReviewsApiLinkBuilder copyWith({
    String? api,
    String? reviewsEndPoint,
  }) {
    return ReviewsApiLinkBuilder(
      api: api ?? this.api,
      reviewsEndPoint: reviewsEndPoint ?? this.reviewsEndPoint,
    );
  }

  @override
  bool operator ==(covariant ReviewsApiLinkBuilder other) {
    if (identical(this, other)) return true;

    return other.api == api && other.reviewsEndPoint == reviewsEndPoint;
  }

  @override
  String toString() =>
      'ReviewsApiLinkBuilder(api: $api, reviewsEndPoint: $reviewsEndPoint)';
}
