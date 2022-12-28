import 'package:test/test.dart';
import 'package:youcan_flutter_sdk/src/store_front/core/exception/store_link_not_found.dart';
import 'package:youcan_flutter_sdk/src/store_front/core/models/product/product.dart';
import 'package:youcan_flutter_sdk/src/store_front/instance/product/product.dart';
import 'package:youcan_flutter_sdk/src/store_front/instance/products/products.dart';
import 'package:youcan_flutter_sdk/src/store_front/instance/youcan_instance.dart';

import 'constants.dart';

void main() {


  group(
    "Products test",
    () {
      test("check the error when the store link is not set", () async {
        try {
          await YouCan.instance.products.all();
        } catch (e) {
          expect(e, isA<StoreLinkNotFoundException>());
        }
      });

      // Please note that I don't own this store, I just use it for testing purposes.
      YouCan.instance.storeLink = testingStoreLink;

      test('check the all() method after we set the store link', () async {
        expect(YouCan.instance.products.all(), isA<Future<List<Product>>>());
        final allProducts = await YouCan.instance.products.all();
        expect(allProducts, isA<List<Product>>());
        expect(allProducts.first, isA<Product>());
        expect(allProducts.first.name, isA<String>());
      });
    },
  );
  test(
    'check the pagination() method with all() with it',
    () async {
      expect(YouCan.instance.products.pagination(1), isA<Products>());
      final allProducts = await YouCan.instance.products.pagination(1).all();
      expect(allProducts, isA<List<Product>>());
      expect(allProducts.first, isA<Product>());
      expect(allProducts.first.name, isA<String>());
    },
  );
  test(
    'check the pagination() method with limit() with all() with it',
    () async {
      expect(YouCan.instance.products.pagination(1).limit(3), isA<Products>());
      final allProducts =
          await YouCan.instance.products.pagination(1).limit(3).all();
      expect(allProducts, isA<List<Product>>());
      expect(allProducts.first, isA<Product>());
      expect(allProducts.first.name, isA<String>());
    },
  );
  test(
    'check the search() method',
    () async {
      expect(
        YouCan.instance.products.search(searchText),
        isA<Future<List<Product>>>(),
      );
      final allProducts = await YouCan.instance.products.search(searchText);
      expect(allProducts, isA<List<Product>>());
      expect(allProducts.first, isA<Product>());
      expect(allProducts.first.name, isA<String>());
    },
  );
  test(
    'check the one() method',
    () async {
      final allProducts = await YouCan.instance.products.all();
      final id = allProducts.first.id;
      expect(
        YouCan.instance.products.one(id),
        isA<Future<Product>>(),
      );
      final product = await YouCan.instance.products.one(id);
      expect(product, isA<Product>());
      expect(product.name, isA<String>());
    },
  );
}
