import 'package:youcan_flutter_sdk/src/store_front/http_requests/extensions/fetch_by_collection/list_products.dart';
import 'package:youcan_flutter_sdk/src/store_front/instance/products/products.dart';

import '../../../core/models/product/product.dart';

extension SearchExt on Products {
  Products searchExtension(String search) {
    this.searchQuery = search;

    return this;
  }

  Future<List<Product>> ssearchExtension(String searchQuery) async {
    return await httpRequests.listProducts(
      page: page,
      categoryId: id,
      limit: limitQuery,
      searchQuery: searchQuery,
    );
  }
}
