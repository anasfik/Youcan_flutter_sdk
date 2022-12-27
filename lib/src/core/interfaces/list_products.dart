import '../models/product.dart';

abstract class ProductsList {
  Future<List<Product>> list();
}
