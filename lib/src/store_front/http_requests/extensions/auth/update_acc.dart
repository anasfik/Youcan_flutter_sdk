import 'package:youcan_flutter_sdk/src/store_front/core/api_links/customers_api_link_builder/customers_api_link_builder.dart';
import 'package:youcan_flutter_sdk/src/store_front/core/api_links/customers_api_link_builder/extensions/endpoint.dart';
import 'package:youcan_flutter_sdk/src/store_front/core/api_links/customers_api_link_builder/extensions/token.dart';
import 'package:youcan_flutter_sdk/src/store_front/core/api_links/endpoints.dart';
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
      body: newUserData.toPersonalizedMap(),
    );

    if (response.statusCode == 200) {
      // Success, don't throw any exception.

    } else if (response.statusCode == 401) {
      throw UnauthorizedException("unauthorized");
    } else {
      throw Exception("something went wrong");
    }
  }
}
