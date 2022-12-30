import 'package:youcan_flutter_sdk/src/store_front/core/api_links/products_api_link_builder/products_api_link_builder.dart';

extension CategoryExtension on ProductsApiLinkBuilder {
  /// This method is used to add the category to the API link.
  ProductsApiLinkBuilder category(
    String? categoriesEndpoint,
    String? categoryId,
  ) {
    final categoryEndPoint =
        categoryId != null ? "${categoriesEndpoint}/${categoryId}" : "";

    return this.copyWith(
      categoryEndPoint: categoryEndPoint,
    );
  }
}
