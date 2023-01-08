import 'package:test/test.dart';
import 'package:youcan_flutter_sdk/src/store_front/core/models/review/review.dart';
import 'package:youcan_flutter_sdk/src/store_front/instance/reviews/reviews.dart';
import 'package:youcan_flutter_sdk/src/store_front/instance/you_can_instance.dart';

import 'constants.dart';

void main() {
  YouCan.instance.storeLink = testingStoreLink;
  test("check the reviews", () async {
    final example = await YouCan.instance.products.all();
    expect(example, isNotEmpty);
    expect(example.first.reviews, isA<Reviews>());

    final exampleReviews = await example.first.reviews.all();
    expect(exampleReviews, isA<List<Review>>());
  });

  test("check the reviews() with the limit()", () async {
    final example = await YouCan.instance.products.all();
    expect(example, isNotEmpty);
    expect(example.first.reviews, isA<Reviews>());

    final exampleReviews = await example.first.reviews.limit(2).all();
    expect(exampleReviews, isA<List<Review>>());
  });
}
