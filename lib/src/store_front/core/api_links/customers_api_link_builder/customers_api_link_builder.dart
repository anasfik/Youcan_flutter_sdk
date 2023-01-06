import 'package:youcan_flutter_sdk/src/store_front/core/base/api_link_builder_base.dart';

class CustomersApiLinkBuilder implements ApiLinkBuilder {
  final String api;
  final String customersEndpoint;
  final String tokenQuery;
  @override
  String get fullApiLink {
    final result = '$api$customersEndpoint$tokenQuery';

    return result;
  }

  @override
  int get hashCode => api.hashCode ^ customersEndpoint.hashCode;

  CustomersApiLinkBuilder({
    required this.api,
    this.customersEndpoint = "",
    this.tokenQuery = "",
  });

  CustomersApiLinkBuilder copyWith({
    String? api,
    String? customersEndpoint,
    String? tokenQuery,
  }) {
    return CustomersApiLinkBuilder(
      api: api ?? this.api,
      customersEndpoint: customersEndpoint ?? this.customersEndpoint,
      tokenQuery: tokenQuery ?? this.tokenQuery,
    );
  }

  @override
  String toString() {
    return 'CustomersApiLinkBuilder(api: $api, customersEndpoint: $customersEndpoint)';
  }

  @override
  operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CustomersApiLinkBuilder &&
        other.api == api &&
        other.customersEndpoint == customersEndpoint;
  }
}
