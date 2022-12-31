// ignore_for_file: public_member_api_docs, sort_constructors_first
import '../api_link_builder/api_link_builder.dart';

class ReviewsApiLinkBuilder implements ApiLinkBuilder {
  final String api;
  final String reviewsEndPoint;
  @override
  String get fullApiLink {
    final result = "$api$reviewsEndPoint";

    return result;
  }

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
}
