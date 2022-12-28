import 'package:youcan_flutter_sdk/src/store_front/core/models/product/product.dart';
import 'package:youcan_flutter_sdk/src/store_front/http_requests/extensions/list_products.dart';
import 'package:youcan_flutter_sdk/src/store_front/http_requests/http_requests.dart';

extension SearchQueryProduct on HttpRequests {
  Future<List<Product>> listProductsWithSearch(String searchQuery) async {
    return await listProducts(searchQuery: searchQuery);
  }
}
