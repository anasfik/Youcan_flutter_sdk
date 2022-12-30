import 'package:youcan_flutter_sdk/src/store_front/core/api_links/api_link_builder/api_link_builder.dart';

import '../products_api_link_builder.dart';

extension a on ProductsApiLinkBuilder {
  /// This is the endpoint that you want to use.
  ProductsApiLinkBuilder endpoint(String endpoint) {
    apiEndpoint = endpoint.startsWith('/') ? endpoint : '/$endpoint';

    return this.copyWith(
      apiEndpoint: apiEndpoint,
    );
  }
}