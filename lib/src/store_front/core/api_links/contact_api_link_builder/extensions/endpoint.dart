import 'package:youcan_flutter_sdk/src/store_front/core/api_links/contact_api_link_builder/contact_api_link_builder.dart';

extension Endpoint on ContactApiLinkBuilder {
  ContactApiLinkBuilder endpoint(String endpoint) {
    return this.copyWith(
      contactEndpoint: endpoint,
    );
  }
}
