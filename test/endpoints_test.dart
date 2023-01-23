import 'package:test/test.dart';
import 'package:you_can_flutter_sdk/src/store_front/instance/you_can_instance.dart';

import 'constants.dart';

void main() {
  YouCan.instance.storeLink = testingStoreLink;

  test("products", () {
    expect(YouCan.instance.products.endPoint, "$testingStoreLink/api/products");
    expect(YouCan.instance.products.pagination(2).endPoint,
        "$testingStoreLink/api/products?page=2");
  });
}
