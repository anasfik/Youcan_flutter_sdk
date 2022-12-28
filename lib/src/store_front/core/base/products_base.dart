import 'package:youcan_flutter_sdk/src/store_front/core/interfaces/all.dart';
import 'package:youcan_flutter_sdk/src/store_front/core/interfaces/endpoint.dart';
import 'package:youcan_flutter_sdk/src/store_front/core/interfaces/limit.dart';
import 'package:youcan_flutter_sdk/src/store_front/core/interfaces/one.dart';
import 'package:youcan_flutter_sdk/src/store_front/core/interfaces/pagination.dart';
import 'package:youcan_flutter_sdk/src/store_front/core/interfaces/search.dart';

abstract class ProductsBase<T>
    implements
        SearchImpl,
        LimitImpl,
        PaginationImpl,
        OneImpl,
        AllImpl,
        EndpointImpl {}
