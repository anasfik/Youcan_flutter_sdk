import '../reviews_api_link_builder.dart';

extension EndPoint on ReviewsApiLinkBuilder {
  ReviewsApiLinkBuilder endpoint(String endPoint) {
    return this.copyWith(
      reviewsEndPoint: endPoint,
    );
  }
}
