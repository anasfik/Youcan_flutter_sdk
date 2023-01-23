import 'package:you_can_flutter_sdk/src/store_front/core/interfaces/endpoint.dart';

import '../interfaces/Login.dart';
import '../interfaces/create_impl.dart';
import '../interfaces/read_account_impl.dart';
import '../interfaces/update_account.dart';

abstract class CustomersBase
    with LoginImpl, CreateImpl, UpdateAccountImpl, ReadAccountImpl {}
