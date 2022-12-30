// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import '../api_link_builder/api_link_builder.dart';

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
}
