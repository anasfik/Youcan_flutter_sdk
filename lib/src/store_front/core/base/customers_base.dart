import '../interfaces/Login.dart';
import '../interfaces/create_impl.dart';
import '../interfaces/read_account_impl.dart';
import '../interfaces/update_account.dart';

/// This is the base class used to enforce the implementation of [CustomersBase] members, segregated interfaces.
abstract class CustomersBase
    with LoginImpl, CreateImpl, UpdateAccountImpl, ReadAccountImpl {}
