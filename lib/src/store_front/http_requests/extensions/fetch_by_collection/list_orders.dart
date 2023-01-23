import 'dart:convert';

import 'package:you_can_flutter_sdk/src/store_front/core/api_links/customers_api_link_builder/extensions/endpoint.dart';
import 'package:you_can_flutter_sdk/src/store_front/core/api_links/customers_api_link_builder/extensions/token.dart';
import 'package:you_can_flutter_sdk/src/store_front/core/api_links/endpoints.dart';
import 'package:you_can_flutter_sdk/src/store_front/core/exception/unauthorized_exception.dart';
import 'package:you_can_flutter_sdk/src/store_front/http_requests/http_requests.dart';

import '../../../core/api_links/customers_api_link_builder/customers_api_link_builder.dart';
import '../../../core/models/orders/order.dart';

import 'package:http/http.dart' as http;

extension ListOrdersExtension on HttpRequests {
  Future<List<Order>> listOrders(String userToken) async {
    final customerOrdersApiLinkBuilder =
        CustomersApiLinkBuilder(api: storeApiLink)
            .endpoint(EndPoints.orders())
            .token(userToken);

    http.Response response = await http.get(
      Uri.parse(customerOrdersApiLinkBuilder.fullApiLink),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
    );
    final body = jsonDecode(response.body);

    if (response.statusCode == 200) {
      final orders = body["data"] as List;

      return orders.map((e) => Order.fromJson(e)).toList();
    } else if (response.statusCode == 401) {
      final unauthorizedMessage = body["detail"] ?? "unauthorized";
      throw UnauthorizedException(unauthorizedMessage);
    } else {
      throw Exception("something went wrong");
    }
  }
}
