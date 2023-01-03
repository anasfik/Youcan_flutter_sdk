import 'package:youcan_flutter_sdk/src/store_front/core/base/api_link_builder_base.dart';

class CustomersApiLinkBuilder implements ApiLinkBuilder {
  final String api;
  final String customersEndpoint;
  @override
  String get fullApiLink {
    final result = '$api$customersEndpoint';

    return result;
  }

  @override
  int get hashCode => api.hashCode ^ customersEndpoint.hashCode;

  CustomersApiLinkBuilder({
    required this.api,
    this.customersEndpoint = "",
  });

  CustomersApiLinkBuilder copyWith({
    String? api,
    String? customersEndpoint,
  }) {
    return CustomersApiLinkBuilder(
      api: api ?? this.api,
      customersEndpoint: customersEndpoint ?? this.customersEndpoint,
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
