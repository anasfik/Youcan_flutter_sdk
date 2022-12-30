import '../products_api_link_builder.dart';

extension PaginationExt on ProductsApiLinkBuilder {
  ProductsApiLinkBuilder pagination(int? pagination) {
    final page = pagination == null ? "" : "?page=$pagination";

    return this.copyWith(
      page: page,
    );
  }
}
