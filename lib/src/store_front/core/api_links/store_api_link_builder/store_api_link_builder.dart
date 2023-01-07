// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:youcan_flutter_sdk/src/store_front/core/base/api_link_builder_base.dart';

class StoreApiLinkBuilder implements ApiLinkBuilder {
  String api;
  String? informationsEndpoint;
  @override
  int get hashCode => api.hashCode ^ informationsEndpoint.hashCode;

  @override
  String get fullApiLink {
    return "$api$informationsEndpoint";
  }

  StoreApiLinkBuilder({
    required this.api,
    this.informationsEndpoint = "",
  });

  @override
  String toString() =>
      'StoreApiLinkBuilder(api: $api, informationsEndpoint: $informationsEndpoint)';

  @override
  bool operator ==(covariant StoreApiLinkBuilder other) {
    if (identical(this, other)) return true;

    return other.api == api &&
        other.informationsEndpoint == informationsEndpoint;
  }

  StoreApiLinkBuilder copyWith({
    String? api,
    String? informationsEndpoint,
  }) {
    return StoreApiLinkBuilder(
      api: api ?? this.api,
      informationsEndpoint: informationsEndpoint ?? this.informationsEndpoint,
    );
  }
}
