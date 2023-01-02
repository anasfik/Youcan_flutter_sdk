// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:youcan_flutter_sdk/src/store_front/core/base/api_link_builder_base.dart';

class PagesApiLinkBuilder implements ApiLinkBuilder {
  final String api;
  int? limitQuery;
  String? searchQuery;
  String pagesEndpoint;
  @override
  String get fullApiLink {
    final result = "$api$pagesEndpoint$searchQuery";

    return result;
  }

  @override
  int get hashCode {
    return api.hashCode ^
        limitQuery.hashCode ^
        searchQuery.hashCode ^
        pagesEndpoint.hashCode;
  }

  PagesApiLinkBuilder({
    required this.api,
    this.pagesEndpoint = '',
    this.limitQuery,
    this.searchQuery,
  });

  @override
  bool operator ==(covariant PagesApiLinkBuilder other) {
    if (identical(this, other)) return true;

    return other.api == api &&
        other.limitQuery == limitQuery &&
        other.searchQuery == searchQuery &&
        other.pagesEndpoint == pagesEndpoint;
  }

  @override
  String toString() {
    return 'PagesApiLinkBuilder(api: $api, limitQuery: $limitQuery, searchQuery: $searchQuery, pagesEndpoint: $pagesEndpoint)';
  }

  PagesApiLinkBuilder copyWith({
    String? api,
    int? limitQuery,
    String? searchQuery,
    String? pagesEndpoint,
  }) {
    return PagesApiLinkBuilder(
      api: api ?? this.api,
      limitQuery: limitQuery ?? this.limitQuery,
      searchQuery: searchQuery ?? this.searchQuery,
      pagesEndpoint: pagesEndpoint ?? this.pagesEndpoint,
    );
  }
}
