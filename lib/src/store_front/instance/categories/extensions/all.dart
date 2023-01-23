import 'package:you_can_flutter_sdk/src/store_front/http_requests/extensions/fetch_by_collection/list_categories.dart';
import 'package:you_can_flutter_sdk/src/store_front/instance/categories/categories.dart';

import '../../../core/models/category/category.dart';

extension AllExtension on Categories {
  Future<List<Category>> allExtension() async {
    return await httpRequests.listCategories(limit: limitQuery);
  }
}
