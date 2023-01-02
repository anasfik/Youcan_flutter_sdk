import '../pages.dart';

extension LimitExtension on Pages {
  Pages limitExtension(int limit) {
    this.limitQuery = limit;

    return this;
  }
}
