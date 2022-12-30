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
        .category("adf180de-b01a-4710-9379-5c26e865dccc");
    expect(
      category,
      isA<Categories>(),
    );

    expect(category.products, isA<Products>());
    expect(category.products.all(), isA<Future<List<Product>>>());
    final categoryProducts = await category.products.all();
    expect(categoryProducts, isA<List<Product>>());
    expect(categoryProducts.first, isA<Product>());
  });
}
