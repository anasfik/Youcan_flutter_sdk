import 'dart:convert';

import 'package:youcan_flutter_sdk/src/store_front/core/api_links/contact_api_link_builder/extensions/endpoint.dart';
import 'package:youcan_flutter_sdk/src/store_front/core/api_links/endpoints.dart';
import 'package:youcan_flutter_sdk/src/store_front/core/exception/service_not_available.dart';
import 'package:youcan_flutter_sdk/src/store_front/http_requests/http_requests.dart';

import 'package:http/http.dart' as http;

import '../../../core/api_links/contact_api_link_builder/contact_api_link_builder.dart';

extension SendMessageExtension on HttpRequests {
  Future<bool> sendMessage({
    required String email,
    required String subject,
    required String message,
  }) async {
    final contactApiLinkBuilder =
        ContactApiLinkBuilder(api: storeApiLink).endpoint(EndPoints.contact());

    final response = await http.post(
      Uri.parse(contactApiLinkBuilder.fullApiLink),
      body: {
        'email': email,
        'subject': subject,
        'message': message,
      },
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);

      return true;
    } else if (response.statusCode == 500) {
      throw ServiceNotAvailable("Service not available");
    } else {
      throw Exception("Something went wrong");
    }
  }
}
