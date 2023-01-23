import 'package:you_can_flutter_sdk/src/store_front/http_requests/extensions/fetch_by_collection/list_orders.dart';
import 'package:you_can_flutter_sdk/src/store_front/instance/customers/customers.dart';

import '../../../core/models/orders/order.dart';

extension OrdersExtension on Customers {
  Future<List<Order>> ordersExtension(String userToken) async {
    return await httpRequests.listOrders(userToken);
  }
}
