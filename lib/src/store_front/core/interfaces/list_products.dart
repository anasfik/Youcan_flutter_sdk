
import '../models/product/product.dart';

abstract class ProductsList {
  Future<List<Product>> list();
}
