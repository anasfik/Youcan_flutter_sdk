// ignore_for_file: public_member_api_docs, sort_constructors_first

import '../../base/api_link_builder_base.dart';

class ProductsApiLinkBuilder implements ApiLinkBuilder {
  final String api;
  String apiEndpoint;
  String searchQuery;
  String page;
  String categoryEndPoint;

  String get fullApiLink {
    final result = "$api$categoryEndPoint$apiEndpoint$page$searchQuery";

    return result;
  }

  @override
  int get hashCode {
    return api.hashCode ^
        apiEndpoint.hashCode ^
        searchQuery.hashCode ^
        page.hashCode ^
        categoryEndPoint.hashCode;
  }

  ProductsApiLinkBuilder({
    required this.api,
    this.apiEndpoint = "",
    this.searchQuery = "",
    this.page = "",
    this.categoryEndPoint = "",
  });

  ProductsApiLinkBuilder copyWith({
    String? api,
    String? apiEndpoint,
    String? searchQuery,
    String? page,
    String? categoryEndPoint,
  }) {
    return ProductsApiLinkBuilder(
      api: api ?? this.api,
      apiEndpoint: apiEndpoint ?? this.apiEndpoint,
      searchQuery: searchQuery ?? this.searchQuery,
      page: page ?? this.page,
      categoryEndPoint: categoryEndPoint ?? this.categoryEndPoint,
    );
  }

  @override
  bool operator ==(covariant ProductsApiLinkBuilder other) {
    if (identical(this, other)) return true;

    return other.api == api &&
        other.apiEndpoint == apiEndpoint &&
        other.searchQuery == searchQuery &&
        other.page == page &&
        other.categoryEndPoint == categoryEndPoint;
  }

  @override
  String toString() {
    return 'ProductsApiLinkBuilder(api: $api, apiEndpoint: $apiEndpoint, searchQuery: $searchQuery, page: $page, categoryEndPoint: $categoryEndPoint)';
  }
}
