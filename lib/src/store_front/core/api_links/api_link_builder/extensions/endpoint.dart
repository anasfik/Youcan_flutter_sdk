import 'package:youcan_flutter_sdk/src/store_front/core/api_links/api_link_builder/api_link_builder.dart';

extension a on ApiLinkBuilder {
  /// This is the endpoint that you want to use.
  ApiLinkBuilder endpoint(String endpoint) {
    apiEndpoint = endpoint.startsWith('/') ? endpoint : '/$endpoint';

    return ApiLinkBuilder(
      api: api,
      apiEndpoint: apiEndpoint,
    );
  }
}
