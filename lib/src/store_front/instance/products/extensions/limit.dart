import '../../../../admin_front/core/.models/product.dart';
import '../products.dart';

extension LimitExt on Products {
  Products limitExtension(int limit) {
    this.limitQuery = limit;

    return this;
  }
}
