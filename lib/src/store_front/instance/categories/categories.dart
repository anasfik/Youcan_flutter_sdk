import 'package:youcan_flutter_sdk/src/store_front/instance/categories/extensions/all.dart';
import 'package:youcan_flutter_sdk/src/store_front/instance/categories/extensions/one.dart';

import '../../core/base/categories_base.dart';
import '../../core/mixins/requests_client.dart';
import '../../core/models/category/category.dart';

class Categories with RequestsClient implements CategoriesBase {
  Future<List<Category>> all() async {
    return await allExtension();
  }

  @override
  Future<Category> one(String categoryId) async {
    return await oneExtension(categoryId);
  }
}
