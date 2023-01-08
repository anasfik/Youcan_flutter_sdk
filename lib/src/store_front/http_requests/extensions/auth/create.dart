import 'dart:convert';

import 'package:youcan_flutter_sdk/src/store_front/core/api_links/customers_api_link_builder/customers_api_link_builder.dart';
import 'package:youcan_flutter_sdk/src/store_front/core/api_links/customers_api_link_builder/extensions/endpoint.dart';
import 'package:youcan_flutter_sdk/src/store_front/core/api_links/endpoints.dart';
import 'package:youcan_flutter_sdk/src/store_front/http_requests/http_requests.dart';

import '../../../core/exception/invalid_data.dart';
import '../../../core/exception/unauthorized_exception.dart';
import '../../../core/models/auth/customer_creation_response.dart';
import '../../../core/models/auth/optional_user_informations.dart';

import 'package:http/http.dart' as http;

extension CreateRequestExtension on HttpRequests {
  Future<CustomerCreationResponse> createRequest(
    String email,
    String password,
    String confirmPassword,
    OptionalUserInformations? optionalUserInformations,
  ) async {
    CustomersApiLinkBuilder createCustomersApiLinkBuilder =
        CustomersApiLinkBuilder(api: storeApiLink)
            .endpoint(EndPoints.customers());

    Map<String, dynamic> createCustomerBody = {
      "email": email,
      "password": password,
      "password_confirmation": confirmPassword,
    };
    if (optionalUserInformations != null) {
      createCustomerBody.addAll(optionalUserInformations.toMap());
    }

    http.Response response = await http.post(
      Uri.parse(createCustomersApiLinkBuilder.fullApiLink),
      headers: {
        "Accept": "application/json",
        "Content-Type": "application/x-www-form-urlencoded",
      },
      body: createCustomerBody,
    );

    final body = response.body;
    Map<String, dynamic> mapBody = jsonDecode(body) as Map<String, dynamic>;
    if (response.statusCode == 200 || response.statusCode == 201) {
      return CustomerCreationResponse.fromJson(mapBody);
    } else if (response.statusCode == 422) {
      final invalidationMessage =
          mapBody["detail"] ?? "The given data was invalid.";
      final metaBody = mapBody["meta"]["fields"] ?? {};

      throw InvalidDataException(
        invalidationMessage,
        InvalidDataExceptionMeta.fromMap(metaBody),
      );
    } else if (response.statusCode == 401 || response.statusCode == 403) {
      throw UnauthorizedException("Unauthorized");
    } else {
      throw Exception("Error: ${response.statusCode}");
    }
  }
}
