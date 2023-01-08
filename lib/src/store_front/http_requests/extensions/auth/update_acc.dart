import 'dart:convert';

import 'package:youcan_flutter_sdk/src/store_front/core/api_links/customers_api_link_builder/customers_api_link_builder.dart';
import 'package:youcan_flutter_sdk/src/store_front/core/api_links/customers_api_link_builder/extensions/endpoint.dart';
import 'package:youcan_flutter_sdk/src/store_front/core/api_links/customers_api_link_builder/extensions/token.dart';
import 'package:youcan_flutter_sdk/src/store_front/core/api_links/endpoints.dart';
import 'package:youcan_flutter_sdk/src/store_front/core/exception/invalid_data.dart';
import 'package:youcan_flutter_sdk/src/store_front/core/exception/unauthorized_exception.dart';

import '../../../core/models/auth/new_user_data.dart';
import '../../http_requests.dart';

import 'package:http/http.dart' as http;

extension UpdateAccExtension on HttpRequests {
  Future<void> updateAccountInfo({
    required String userToken,
    required NewUserData newUserData,
  }) async {
    final updateAccountApiLinkBuilder =
        CustomersApiLinkBuilder(api: storeApiLink)
            .endpoint(EndPoints.account())
            .token(userToken);

    http.Response response = await http.put(
      Uri.parse(updateAccountApiLinkBuilder.fullApiLink),
      headers: {
        'Content-Type': 'application/json',
        "accept": "application/json",
      },
      body: jsonEncode(newUserData.toPersonalizedMap()),
    );
    final body = jsonDecode(response.body);

    if (response.statusCode == 200) {
      // Success, don't throw any exception.

    } else if (response.statusCode == 401) {
      final unauthorizedMessage = body["detail"] ?? "unauthorized";
      throw UnauthorizedException(unauthorizedMessage);
    } else if (response.statusCode == 422) {
      final invalidationMessage =
          body["detail"] ?? "The given data was invalid.";
      final metaBody = body["meta"] ?? {};

      throw InvalidDataException(
        invalidationMessage,
        InvalidDataExceptionMeta.fromMap(metaBody),
      );
    } else {
      throw Exception("something went wrong");
    }
  }
}
