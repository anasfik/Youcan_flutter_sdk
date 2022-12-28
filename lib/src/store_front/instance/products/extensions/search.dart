import 'package:youcan_flutter_sdk/src/store_front/http_requests/extensions/list_products.dart';
import 'package:youcan_flutter_sdk/src/store_front/instance/products/products.dart';

import '../../../core/models/product/product.dart';

extension SearchExt on Products {
  Future<List<Product>> searchExtension(String searchQuery) async {
    return await httpRequests.listProducts(
      searchQuery: searchQuery,
    );
  }
}
