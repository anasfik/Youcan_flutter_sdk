import 'package:youcan_flutter_sdk/src/core/models/product.dart';

import '../../core/interfaces/list_products.dart';

class Products implements ProductsList {
  @override
  Future<List<Product>> list() async {
    return Future.value([]);
  }
}
