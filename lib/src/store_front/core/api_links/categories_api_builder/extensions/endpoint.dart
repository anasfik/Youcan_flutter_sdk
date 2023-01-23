import 'package:you_can_flutter_sdk/src/store_front/core/api_links/categories_api_builder/categories_api_link_builder.dart';

extension EndPoint on CategoriesApiLinkBuilder {
  CategoriesApiLinkBuilder endpoint(String endPoint) {
    return this.copyWith(
      categoriesEndPoint: endPoint,
    );
  }
}
