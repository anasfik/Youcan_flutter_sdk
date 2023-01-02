// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:youcan_flutter_sdk/src/store_front/core/api_links/endpoints.dart';
import 'package:youcan_flutter_sdk/src/store_front/core/api_links/pages_api_link_builder/Pages_api_link_builder.dart';
import 'package:youcan_flutter_sdk/src/store_front/core/api_links/pages_api_link_builder/extensions/endpoint.dart';
import 'package:youcan_flutter_sdk/src/store_front/core/api_links/pages_api_link_builder/extensions/limit.dart';
import 'package:youcan_flutter_sdk/src/store_front/core/api_links/pages_api_link_builder/extensions/search.dart';
import 'package:youcan_flutter_sdk/src/store_front/core/mixins/requests_client.dart';
import 'package:youcan_flutter_sdk/src/store_front/instance/pages/extensions/all.dart';

import '../../../../youcan_flutter_sdk.dart';
import '../../core/base/pages_base.dart';
import '../../core/models/page/page.dart';

class Pages with RequestsClient implements PagesBase {
  String? searchQuery;
  int? limitQuery;

  @override
  String? get endPoint {
    final String storeApiLink = YouCan.instance.storeApiLink;

    return PagesApiLinkBuilder(api: storeApiLink)
        .endpoint(EndPoints.pages())
        .limit(limitQuery)
        .search(searchQuery)
        .fullApiLink;
  }

  Pages({
    this.searchQuery,
    this.limitQuery,
  });

  @override
  Future<List<Page>> all() async {
    return await allExtension();
  }
}
