import 'package:you_can_flutter_sdk/src/store_front/core/interfaces/all.dart';
import 'package:you_can_flutter_sdk/src/store_front/core/interfaces/endpoint.dart';
import 'package:you_can_flutter_sdk/src/store_front/core/interfaces/limit.dart';
import 'package:you_can_flutter_sdk/src/store_front/core/interfaces/search.dart';

/// This is the base class used to enforce the implementation of [PagesBase] members, segregated interfaces.
abstract class PagesBase
    implements AllImpl, EndpointImpl, SearchImpl, LimitImpl {}
