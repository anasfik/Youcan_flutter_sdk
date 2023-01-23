import 'package:test/test.dart';
import 'package:you_can_flutter_sdk/src/store_front/core/models/product/product.dart';
import 'package:you_can_flutter_sdk/src/store_front/instance/categories/categories.dart';
import 'package:you_can_flutter_sdk/src/store_front/instance/products/products.dart';
import 'package:you_can_flutter_sdk/src/store_front/instance/you_can_instance.dart';
import 'constants.dart';

void main() {
  YouCan.instance.storeLink = testingStoreLink;

  test('This will test the category', () async {
    final category = YouCan.instance.categories.category(exampleCategoryId);
    expect(
      category,
      isA<Categories>(),
    );
    expect(category.products, isA<Products>());
    expect(category.products.all(), isA<Future<List<Product>>>());
  });

  test('test category with all()', () async {
    final categoryProducts =
        YouCan.instance.categories.category(exampleCategoryId).products;
    print(categoryProducts.endPoint);
    final allcategoryProducts = await categoryProducts.all();
    expect(allcategoryProducts, isA<List<Product>>());
    expect(allcategoryProducts.first, isA<Product>());
  });
  test('test category with pagination() with all()', () async {
    final categoryProducts = await YouCan.instance.categories
        .category(exampleCategoryId)
        .products
        .pagination(1)
        .all();
    expect(categoryProducts, isA<List<Product>>());
    expect(categoryProducts.first, isA<Product>());
  });
  test('test category with pagination() with limit() with all()', () async {
    final categoryProducts = await YouCan.instance.categories
        .category(exampleCategoryId)
        .products
        .limit(2)
        .pagination(1)
        .all();
    expect(categoryProducts, isA<List<Product>>());
    expect(categoryProducts.length <= 2, equals(true));
  });
}
