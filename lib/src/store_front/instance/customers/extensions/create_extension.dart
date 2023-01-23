import 'package:you_can_flutter_sdk/src/store_front/http_requests/extensions/auth/create.dart';

import '../../../core/models/auth/customer_creation_response.dart';
import '../../../core/models/auth/optional_user_informations.dart';
import '../customers.dart';

extension CreateExtension on Customers {
  Future<CustomerCreationResponse> createExtension({
    required String email,
    required String password,
    required String confirmPassword,
    OptionalUserInformations? optionalUserInformations,
  }) async {
    return await httpRequests.createRequest(
      email,
      password,
      confirmPassword,
      optionalUserInformations,
    );
  }
}
