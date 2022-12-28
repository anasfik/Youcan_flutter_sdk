import '../products.dart';

extension Pagination on Products {
  Products paginationExtension(int page) {
    this.page = page;

    return this;
  }
}
