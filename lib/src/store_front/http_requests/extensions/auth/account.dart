import 'dart:convert';

import 'package:you_can_flutter_sdk/src/store_front/core/api_links/customers_api_link_builder/customers_api_link_builder.dart';
import 'package:you_can_flutter_sdk/src/store_front/core/api_links/customers_api_link_builder/extensions/endpoint.dart';
import 'package:you_can_flutter_sdk/src/store_front/core/api_links/customers_api_link_builder/extensions/token.dart';
import 'package:you_can_flutter_sdk/src/store_front/core/api_links/endpoints.dart';
import 'package:you_can_flutter_sdk/src/store_front/core/exception/unauthorized_exception.dart';
import 'package:you_can_flutter_sdk/src/store_front/http_requests/http_requests.dart';

import '../../../core/models/auth/user_info.dart';
import 'package:http/http.dart' as http;

extension CustomerAccountExtension on HttpRequests {
  Future<CustomerAccountInformations> customerAccount(
    String token,
  ) async {
    final customersApiLinkBuilder = CustomersApiLinkBuilder(api: storeApiLink)
        .endpoint(EndPoints.account())
        .token(token);

    http.Response response = await http.get(
      Uri.parse(customersApiLinkBuilder.fullApiLink),
      headers: {
        "accept": "application/json",
        "content-type": "application/json",
      },
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);

      return CustomerAccountInformations.fromJson(data);
    } else if (response.statusCode == 401) {
      throw UnauthorizedException("Unauthorized");
    } else {
      throw Exception("Something went wrong");
    }
  }
}
