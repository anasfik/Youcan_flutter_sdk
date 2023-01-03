import 'package:test/scaffolding.dart';
import 'package:test/test.dart';
import 'package:youcan_flutter_sdk/src/store_front/core/models/auth/customer_creation_response.dart';
import 'package:youcan_flutter_sdk/src/store_front/core/models/auth/optional_user_informations.dart';
import 'package:youcan_flutter_sdk/youcan_flutter_sdk.dart';

import 'constants.dart';

void main() {
  YouCan.instance.storeLink = testingStoreLink;

  group('check the customers', () {
    final email = "test10dsbdccdv@gmail.com";

    test('check the create() method', () async {
      final createResponse = await YouCan.instance.customers.create(
        email: email,
        confirmPassword: email,
        password: email,
        optionalUserInformations: OptionalUserInformations(
          firstName: 'FIRST NAME',
          lastName: 'LAST NAME',
          city: 'CITY',
          country: 'COUNTRY',
          notes: 'NOTES',
          region: 'REGION',
        ),
      );

      expect(createResponse, isA<CustomerCreationResponse>());
      expect(createResponse.email, email);
      expect(createResponse.firstName, '');
    });
    test('check the login() method', () async {
      final loginToken = await YouCan.instance.customers.login(
        email: email,
        password: email,
      );

      expect(loginToken, isA<String>());
    });
  });
}
