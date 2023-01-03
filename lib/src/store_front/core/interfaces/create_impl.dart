import '../models/auth/optional_user_informations.dart';

abstract class CreateImpl {
  Future create({
    required String email,
    required String password,
    required String confirmPassword,
    OptionalUserInformations? optionalUserInformations,
  }) async {}
}
