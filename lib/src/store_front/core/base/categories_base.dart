import 'package:you_can_flutter_sdk/src/store_front/core/interfaces/all.dart';
import 'package:you_can_flutter_sdk/src/store_front/core/interfaces/endpoint.dart';

/// This is the base class used to enforce the implementation of [CategoriesBase] members, segregated interfaces.
abstract class CategoriesBase implements AllImpl, EndpointImpl {}
