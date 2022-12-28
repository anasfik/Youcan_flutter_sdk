import '../api_link_builder.dart';

extension SearchExt on ApiLinkBuilder {
  /// This is the endpoint that you want to use.
  ApiLinkBuilder search(String? search) {
    searchQuery = search == null ? "" : "?q=$search";

    return ApiLinkBuilder(
      api: api,
      apiEndpoint: apiEndpoint,
      searchQuery: searchQuery,
    );
  }
}
