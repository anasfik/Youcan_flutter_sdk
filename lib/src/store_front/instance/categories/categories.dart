import 'package:youcan_flutter_sdk/src/store_front/instance/categories/extensions/all.dart';

import '../../core/base/categories_base.dart';
import '../../core/mixins/requests_client.dart';
import '../../core/models/category/category.dart';

class Categories with RequestsClient implements CategoriesBase {
  Future<List<Category>> all() async {
    return await allExtension();
  }
}
