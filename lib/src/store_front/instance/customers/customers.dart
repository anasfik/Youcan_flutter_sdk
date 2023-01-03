import 'package:youcan_flutter_sdk/src/store_front/core/mixins/requests_client.dart';
import 'package:youcan_flutter_sdk/src/store_front/http_requests/extensions/login/login.dart';

import '../../core/base/customers_base.dart';

class Customers with RequestsClient implements CustomersBase {
  @override

  /// Login to the store, this will return a token that will be used in the future requests, or throw exception if the login failed.
  Future<String> login({
    required String email,
    required String password,
  }) {
    return httpRequests.loginRequest(email, password);
  }
}
