import '../api_link_builder.dart';

extension PaginationExt on ApiLinkBuilder {
  ApiLinkBuilder pagination(int? page) {
    return ApiLinkBuilder(
      api: api,
      apiEndpoint: apiEndpoint,
      searchQuery: searchQuery,
      page: page == null ? "" : "?page=$page",
    );
  }
}
