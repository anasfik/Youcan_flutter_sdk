// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:youcan_flutter_sdk/src/store_front/instance/categories/extensions/all.dart';
import 'package:youcan_flutter_sdk/src/store_front/instance/categories/extensions/limit.dart';
import 'package:youcan_flutter_sdk/src/store_front/instance/products/products.dart';

import '../../core/base/categories_base.dart';
import '../../core/mixins/requests_client.dart';
import '../../core/models/category/category.dart';

class Categories with RequestsClient implements CategoriesBase {
  int? limitQuery;
  Products products = Products();

  @override
  int get hashCode => limitQuery.hashCode;

  Categories({
    this.limitQuery,
  });
  Future<List<Category>> all() async {
    return await allExtension();
  }

  Categories limit(int limit) {
    return limitExtension(limit);
  }

  Categories category(String id) {
    final cat = Categories();
    cat.products = Products(categoryId: id);

    return cat;
  }

  @override
  bool operator ==(covariant Categories other) {
    if (identical(this, other)) return true;

    return other.limitQuery == limitQuery;
  }

  @override
  String toString() => 'Categories(limitQuery: $limitQuery)';

  Categories copyWith({
    int? limitQuery,
  }) {
    return Categories(
      limitQuery: limitQuery ?? this.limitQuery,
    );
  }
}
