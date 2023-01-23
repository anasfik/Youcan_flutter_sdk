import 'dart:convert';

import 'package:you_can_flutter_sdk/src/store_front/core/api_links/store_api_link_builder/extension/endpoint.dart';
import 'package:you_can_flutter_sdk/src/store_front/core/exception/not_found.dart';
import 'package:you_can_flutter_sdk/src/store_front/http_requests/http_requests.dart';

import '../../../core/api_links/endpoints.dart';
import '../../../core/api_links/store_api_link_builder/store_api_link_builder.dart';

import "package:http/http.dart" as http;

import '../../../core/models/store/store_informations.dart';

extension StoreInformationsExtension on HttpRequests {
  Future<StoreInformations> storeInformations() async {
    final storeInformationsApiLinkBuilder =
        StoreApiLinkBuilder(api: storeApiLink)
            .endpoint(EndPoints.storeInformations());

    http.Response res = await http.get(
      Uri.parse(storeInformationsApiLinkBuilder.fullApiLink),
      headers: {
        'Content-Type': 'application/json',
        "accept": "application/json",
      },
    );

    final body = jsonDecode(res.body);
    if (res.statusCode == 200) {
      return StoreInformations.fromMap(body);
    } else if (res.statusCode == 404) {
      throw NotFoundException("informations not found");
    } else {
      throw Exception("something went wrong");
    }
  }
}
