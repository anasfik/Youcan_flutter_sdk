// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:youcan_flutter_sdk/src/store_front/core/api_links/api_link_builder/api_link_builder.dart';

class CategoriesApiLinkBuilder implements ApiLinkBuilder {
  final String api;
  final String categoriesEndPoint;
  @override

  /// This is the full api link, it's used to access the api.
  String get fullApiLink {
    final result = "$api$categoriesEndPoint";

    return result;
  }

  @override
  int get hashCode => api.hashCode ^ categoriesEndPoint.hashCode;

  CategoriesApiLinkBuilder({
    required this.api,
    this.categoriesEndPoint = "",
  });

  @override
  bool operator ==(covariant CategoriesApiLinkBuilder other) {
    if (identical(this, other)) return true;

    return other.api == api && other.categoriesEndPoint == categoriesEndPoint;
  }

  @override
  String toString() =>
      'CategoriesApiLinkBuilder(api: $api, categoriesEndPoint: $categoriesEndPoint)';

  CategoriesApiLinkBuilder copyWith({
    String? api,
    String? categoriesEndPoint,
  }) {
    return CategoriesApiLinkBuilder(
      api: api ?? this.api,
      categoriesEndPoint: categoriesEndPoint ?? this.categoriesEndPoint,
    );
  }
}
