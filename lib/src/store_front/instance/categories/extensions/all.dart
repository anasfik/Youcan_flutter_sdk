import 'package:youcan_flutter_sdk/src/store_front/http_requests/extensions/list_categories.dart';
import 'package:youcan_flutter_sdk/src/store_front/instance/categories/categories.dart';

import '../../../core/models/category/category.dart';

extension AllExtension on Categories {
  Future<List<Category>> allExtension() async {
    return await httpRequests.listCategories();
  }
}
