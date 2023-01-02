import 'package:youcan_flutter_sdk/src/store_front/core/models/page/page.dart';
import 'package:youcan_flutter_sdk/src/store_front/http_requests/extensions/fetch_by_collection/list_pages.dart';

import '../pages.dart';

extension AllExt on Pages {
  Future<List<Page>> allExtension() async {
    return await httpRequests.listPages(
      search: searchQuery,
      limit: limitQuery,
    );
  }
}
