import 'package:youcan_flutter_sdk/src/store_front/http_requests/extensions/auth/login.dart';

import '../customers.dart';

extension LoginExtension on Customers {
  Future<String> loginExtension(
    String email,
    String password,
  ) async {
    return await httpRequests.loginRequest(email, password);
  }
}
