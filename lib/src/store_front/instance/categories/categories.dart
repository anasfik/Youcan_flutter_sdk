import 'package:youcan_flutter_sdk/src/store_front/instance/categories/extensions/all.dart';
import 'package:youcan_flutter_sdk/src/store_front/instance/products/products.dart';

import '../../core/base/categories_base.dart';
import '../../core/mixins/requests_client.dart';
import '../../core/models/category/category.dart';

class Categories with RequestsClient implements CategoriesBase {
  Products? products;

  Future<List<Category>> all() async {
    return await allExtension();
  }

  Categories category(String id) {
    final cat = Categories();
    cat.products = Products(categoryId: id);

    return cat;
  }
}
