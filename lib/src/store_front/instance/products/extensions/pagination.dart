import '../products.dart';

extension Pagination on Products {
  Products pagination(int page) {
    this.page = page;

    return this;
  }
}
