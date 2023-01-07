import 'package:youcan_flutter_sdk/src/store_front/core/api_links/store_api_link_builder/store_api_link_builder.dart';

extension EndPoint on StoreApiLinkBuilder {
  StoreApiLinkBuilder endpoint(String endpoint) {
    return this.copyWith(informationsEndpoint: endpoint);
  }
}
