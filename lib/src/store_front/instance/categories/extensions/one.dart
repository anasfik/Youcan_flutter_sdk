import 'package:you_can_flutter_sdk/src/store_front/http_requests/extensions/fetch_by_one/fetch_category.dart';
import 'package:you_can_flutter_sdk/src/store_front/instance/categories/categories.dart';

import '../../../core/models/category/category.dart';

extension OneExtension on Categories {
  Future<Category> oneExtension(String id) async {
    return httpRequests.fetchCategory(id);
  }
}
