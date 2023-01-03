import 'dart:convert';

import 'package:youcan_flutter_sdk/src/store_front/core/api_links/customers_api_link_builder/customers_api_link_builder.dart';
import 'package:youcan_flutter_sdk/src/store_front/core/api_links/customers_api_link_builder/extensions/endpoint.dart';
import 'package:youcan_flutter_sdk/src/store_front/core/api_links/endpoints.dart';

import '../../../core/exception/invalid_data.dart';
import '../../http_requests.dart';
import "package:http/http.dart" as http;

extension LoginExtension on HttpRequests {
  Future<String> loginRequest(
    String email,
    String password,
  ) async {
    final customersApiLinkBuilder =
        CustomersApiLinkBuilder(api: storeApiLink).endpoint(EndPoints.login());
    print(customersApiLinkBuilder.fullApiLink);
    http.Response response = await http.post(
      Uri.parse(customersApiLinkBuilder.fullApiLink),
      body: {
        "email": email,
        "password": password,
      },
      headers: {
        "Accept": "application/json",
        "Content-Type": "application/x-www-form-urlencoded",
      },
    );

    if (response.statusCode == 200) {
      final body = response.body;
      final mapBody = jsonDecode(body);

      return mapBody["token"];
    } else if (response.statusCode == 422) {
      throw InvalidDataException("The given data was invalid.");
    } else {
      throw Exception("Error: ${response.statusCode}");
    }
  }
}
