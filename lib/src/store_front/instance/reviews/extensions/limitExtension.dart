import '../reviews.dart';

extension LimitExtension on Reviews {
  Reviews limitExtension(int limit) {
    return this.copyWith(
      limitQuery: limit,
    );
  }
}
