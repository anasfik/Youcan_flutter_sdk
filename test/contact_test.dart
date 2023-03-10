import 'package:test/test.dart';
import 'package:you_can_flutter_sdk/src/store_front/instance/contact/contact.dart';
import 'package:you_can_flutter_sdk/src/store_front/instance/you_can_instance.dart';

import 'constants.dart';

void main() {
  group('check the contact', () {
    YouCan.instance.storeLink = testingStoreLink;

    test('check the contact', () {
      final example = YouCan.instance.contact;
      expect(example, isNotNull);
      expect(example, isA<Contact>());
    });
    test('check the sendMessage()', () async {
      final example = YouCan.instance.contact;
      final isSent = await example.sendMessage(
        email: 'example@gmail.com',
        subject: 'subject',
        message: 'message',
      );
      expect(isSent, true);
    });
  });
}
