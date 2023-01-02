import '../Pages_api_link_builder.dart';

extension SearchExtension on PagesApiLinkBuilder {
  PagesApiLinkBuilder search(String? search) {
    final resultQuery = search != null ? "?q=$search" : '';

    return this.copyWith(
      searchQuery: resultQuery,
    );
  }
}
