import '../categories.dart';

extension LimitExtension on Categories {
  /// Returns a list of categories limited to the given [limit].
  Categories limitExtension(int limit) {
    return copyWith(limitQuery: limit);
  }
}
