import 'package:you_can_flutter_sdk/src/store_front/core/models/product/product.dart';
import 'package:you_can_flutter_sdk/src/store_front/http_requests/extensions/fetch_by_collection/list_products.dart';
import 'package:you_can_flutter_sdk/src/store_front/http_requests/http_requests.dart';

extension SearchQueryProduct on HttpRequests {
  Future<List<Product>> listProductsWithSearch(String searchQuery) async {
    return await listProducts(searchQuery: searchQuery);
  }
}
