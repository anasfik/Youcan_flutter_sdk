import 'package:test/test.dart';
import 'package:youcan_flutter_sdk/src/store_front/core/models/page/page.dart';
import 'package:youcan_flutter_sdk/src/store_front/instance/pages/pages.dart';
import 'package:youcan_flutter_sdk/youcan_flutter_sdk.dart';

import 'constants.dart';

void main() {
  YouCan.instance.storeLink = testingStoreLink;

  group('check the pages', () {
    test("check the all()", () async {
      final example = await YouCan.instance.pages.all();
      expect(example, isNotEmpty);
      expect(example.first, isA<Page>());
    });

    test("check the search()", () async {
      final example = YouCan.instance.pages.search("contact");
      expect(example, isA<Pages>());
    });

    test("check the search() with all()", () async {
      final example = await YouCan.instance.pages.search("contact").all();
      expect(example, isA<List<Page>>());
      expect(example.first.id, isA<String>());
    });

    test("check the limit() with all()", () async {
      final example = await YouCan.instance.pages.limit(1).all();
      expect(example, isA<List<Page>>());
      expect(example.length, equals(1));
      expect(example.first.id, isA<String>());
    });

    test("check the limit() with search() with all()", () async {
      final example = await YouCan.instance.pages.limit(1).search("c").all();
      expect(example, isA<List<Page>>());
      expect(example.length, equals(1));
      expect(example.first.id, isA<String>());
    });
  });
}
