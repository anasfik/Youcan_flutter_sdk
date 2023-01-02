import 'package:youcan_flutter_sdk/src/store_front/core/api_links/pages_api_link_builder/Pages_api_link_builder.dart';

extension LimitExtension on PagesApiLinkBuilder {
  PagesApiLinkBuilder limit(int? limit) {
    return this.copyWith(
      limitQuery: limit,
    );
  }
}
