import 'package:youcan_flutter_sdk/src/store_front/http_requests/extensions/auth/update_acc.dart';
import 'package:youcan_flutter_sdk/src/store_front/instance/customers/customers.dart';

import '../../../core/models/auth/new_user_data.dart';

extension UpdateAccountInformationsExtension on Customers {
  // ignore: long-parameter-list
  Future<void> updateAccountInformationsExtension({
    required String userToken,
    required NewUserData newUserData,
  }) async {
    return await httpRequests.updateAccountInfo(
      userToken: userToken,
      newUserData: newUserData,
    );
  }
}
