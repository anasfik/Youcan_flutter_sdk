import '../models/auth/new_user_data.dart';

abstract class UpdateAccountImpl {
  Future<void> updateCustomerAccount({
    required String userToken,
    required NewUserData newUserData,
  });
}
