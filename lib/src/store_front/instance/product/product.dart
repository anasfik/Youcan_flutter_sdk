import 'package:youcan_flutter_sdk/src/store_front/http_requests/extensions/fetch_product.dart';
import 'package:youcan_flutter_sdk/src/store_front/instance/products/products.dart';

import '../../core/models/product/product.dart';

extension ProductExt on Products {
  /// Returns the product with the given [productId] as a [Product].
  Future<Product> one(String productId) async {
    return await httpRequests.fetchProduct(productId);
  }
}
