import 'package:youcan_flutter_sdk/src/store_front/core/mixins/requests_client.dart';
import 'package:youcan_flutter_sdk/src/store_front/core/models/auth/optional_user_informations.dart';
import 'package:youcan_flutter_sdk/src/store_front/http_requests/extensions/auth/login.dart';
import 'package:youcan_flutter_sdk/src/store_front/instance/customers/extensions/create_extension.dart';
import 'package:youcan_flutter_sdk/src/store_front/instance/customers/extensions/customer_ccount_extension.dart';
import 'package:youcan_flutter_sdk/src/store_front/instance/customers/extensions/login.dart';
import 'package:youcan_flutter_sdk/src/store_front/instance/customers/extensions/update.dart';

import '../../core/base/customers_base.dart';
import '../../core/models/auth/customer_creation_response.dart';
import '../../core/models/auth/new_user_data.dart';
import '../../core/models/review/user_info.dart';

class Customers with RequestsClient implements CustomersBase {
  @override

  /// Login to the store, this will return a token that will be used in the future requests, or throw exception if the login failed.
  Future<String> login({
    required String email,
    required String password,
  }) async {
    return await loginExtension(email, password);
  }

  @override

  /// Create a new customer, this will return a token that will be used in the future requests, or throw exception if the creation failed.
  Future<CustomerCreationResponse> create({
    required String email,
    required String password,
    required String confirmPassword,
    OptionalUserInformations? optionalUserInformations,
  }) async {
    return await createExtension(
      email: email,
      password: password,
      confirmPassword: confirmPassword,
      optionalUserInformations: optionalUserInformations,
    );
  }

  /// This will return a [CustomerAccountInformations] that contains the details informations about the user such it's id, email, name, etc.
  ///
  /// This throws exception if the request failed.
  Future<CustomerAccountInformations> customerAccount({
    required String userToken,
  }) async {
    return await customerAccountExtension(userToken);
  }

  /// This will update the user account informations, such as it's name, email, etc.
  Future<void> updateCustomerAccount({
    required String userToken,
    required NewUserData newUserData,
  }) async {
    return await updateAccountInformationsExtension(
      newUserData: newUserData,
      userToken: userToken,
    );
  }
}
