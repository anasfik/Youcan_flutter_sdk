import 'package:test/scaffolding.dart';
import 'package:test/test.dart';
import 'package:you_can_flutter_sdk/src/store_front/core/models/auth/customer_creation_response.dart';
import 'package:you_can_flutter_sdk/src/store_front/core/models/auth/optional_user_informations.dart';
import 'package:you_can_flutter_sdk/src/store_front/core/models/auth/user_info.dart';
import 'package:you_can_flutter_sdk/you_can_flutter_sdk.dart';

import 'constants.dart';

void main() {
  YouCan.instance.storeLink = testingStoreLink;
  String? userToken;
  group('check the customers', () {
    final email = "dtedsdtdddddd10dsbdcvxdvxcdv@gmail.com";

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
      expect(createResponse.firstName, 'FIRST NAME');
    });
    test('check the login() method', () async {
      userToken = await YouCan.instance.customers.login(
        email: email,
        password: email,
      );

      expect(userToken, isA<String>());
    });

    test('check the customerAccount() method', () async {
      // this will use the userToken from the previous test.
      assert(userToken != null,
          "the userToken is null, this test was designed to use the token from the previous login() test, don't change order of it or use your custom token directly.");
      final accInformations = await YouCan.instance.customers
          .customerAccount(userToken: userToken!);

      expect(accInformations, isA<CustomerAccountInformations>());
      expect(accInformations.id, isA<String>());
    });
  });
}
