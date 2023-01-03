import 'package:youcan_flutter_sdk/src/store_front/core/interfaces/endpoint.dart';

import '../interfaces/Login.dart';
import '../interfaces/create_impl.dart';

abstract class CustomersBase with LoginImpl, CreateImpl, EndpointImpl {}
