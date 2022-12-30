import 'package:test/test.dart';
import 'package:youcan_flutter_sdk/src/store_front/core/models/product/product.dart';
import 'package:youcan_flutter_sdk/src/store_front/instance/categories/categories.dart';
import 'package:youcan_flutter_sdk/src/store_front/instance/products/products.dart';
import 'package:youcan_flutter_sdk/src/store_front/instance/youcan_instance.dart';
import 'constants.dart';

void main() {
  YouCan.instance.storeLink = testingStoreLink;

  test('This will test the category', () async {
    final category = YouCan.instance.categories
        .category("adf180de-b01a-4710-9379-5c26e865dccc00");
    expect(
      category,
      isA<Categories>(),
    );
    expect(category.products, isA<Products>());
    expect(category.products.all(), isA<Future<List<Product>>>());
  });

  test('test category with all()', () async {
    final categoryProducts = await YouCan.instance.categories
        .category("adf180de-b01a-4710-9379-5c26e865dccc")
        .products
        .all();
    expect(categoryProducts, isA<List<Product>>());
    expect(categoryProducts.first, isA<Product>());
  });
  test('test category with pagination() with all()', () async {
    final categoryProducts = await YouCan.instance.categories
        .category("adf180de-b01a-4710-9379-5c26e865dccc")
        .products
        .pagination(1)
        .all();
    expect(categoryProducts, isA<List<Product>>());
    expect(categoryProducts.first, isA<Product>());
  });
  test('test category with pagination() with limit() with all()', () async {
    final categoryProducts = await YouCan.instance.categories
        .category("adf180de-b01a-4710-9379-5c26e865dccc")
        .products
        .limit(2)
        .pagination(1)
        .all();
    expect(categoryProducts, isA<List<Product>>());
    expect(categoryProducts.length, equals(2));
  });
}
