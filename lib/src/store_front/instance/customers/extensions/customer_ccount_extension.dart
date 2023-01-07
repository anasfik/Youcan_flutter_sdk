import 'package:youcan_flutter_sdk/src/store_front/http_requests/extensions/auth/account.dart';
import 'package:youcan_flutter_sdk/src/store_front/instance/customers/customers.dart';

import '../../../core/models/auth/user_info.dart';

extension CustomerAccountExtension on Customers {
  Future<CustomerAccountInformations> customerAccountExtension(
    String token,
  ) async {
    return await httpRequests.customerAccount(token);
  }
}
