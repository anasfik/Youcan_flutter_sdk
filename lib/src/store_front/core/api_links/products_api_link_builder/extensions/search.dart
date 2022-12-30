import '../products_api_link_builder.dart';

extension SearchExt on ProductsApiLinkBuilder {
  /// This is the endpoint that you want to use.
  ProductsApiLinkBuilder search(String? search) {
    searchQuery = search == null ? "" : "?q=$search";

    return this.copyWith(
      searchQuery: searchQuery,
    );
  }
}
