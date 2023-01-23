import 'package:you_can_flutter_sdk/src/store_front/core/mixins/requests_client.dart';
import 'package:you_can_flutter_sdk/src/store_front/core/models/auth/optional_user_informations.dart';
import 'package:you_can_flutter_sdk/src/store_front/core/models/orders/order.dart';
import 'package:you_can_flutter_sdk/src/store_front/instance/customers/extensions/create_extension.dart';
import 'package:you_can_flutter_sdk/src/store_front/instance/customers/extensions/customer_ccount_extension.dart';
import 'package:you_can_flutter_sdk/src/store_front/instance/customers/extensions/login.dart';
import 'package:you_can_flutter_sdk/src/store_front/instance/customers/extensions/orders_extension.dart';
import 'package:you_can_flutter_sdk/src/store_front/instance/customers/extensions/update.dart';

import '../../core/base/customers_base.dart';
import '../../core/models/auth/customer_creation_response.dart';
import '../../core/models/auth/new_user_data.dart';
import '../../core/models/auth/user_info.dart';

class Customers with RequestsClient implements CustomersBase {
  /// Login to the store, this will return a token that can be used in the future requests, or throw exception if the login failed.
  ///
  @override
  Future<String> login({
    required String email,
    required String password,
  }) async {
    return await loginExtension(email, password);
  }

  @override

  /// Creates a new customer, this will return a [CustomerCreationResponse] that can be used in the future requests, or throw exception if the creation failed.
  ///
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

  /// This will return a [CustomerAccountInformations] that contains the details informations about the created customer account such it's id, email, name, etc.
  ///
  /// This throws exception if the request failed.
  Future<CustomerAccountInformations> customerAccount({
    required String userToken,
  }) async {
    return await customerAccountExtension(userToken);
  }

  /// This is the global method to update the authenticated customer account informations.
  /// You need an authenticated [userToken] token to update the account details with.
  ///
  Future<void> updateCustomerAccount({
    required String userToken,
    required NewUserData newUserData,
  }) async {
    return await updateAccountInformationsExtension(
      newUserData: newUserData,
      userToken: userToken,
    );
  }

  /// This should be used to get the authenticated customer's orders.
  ///
  /// You need an authenticated [userToken] token to get the orders with.
  Future<List<Order>> orders({
    required String userToken,
  }) async {
    return await ordersExtension(userToken);
  }
}
