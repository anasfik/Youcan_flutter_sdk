import 'package:you_can_flutter_sdk/src/store_front/core/base/api_link_builder_base.dart';

class ContactApiLinkBuilder extends ApiLinkBuilder {
  final String contactEndpoint;
  final String api;

  @override
  String get fullApiLink {
    final result = '$api$contactEndpoint';

    return result;
  }

  @override
  int get hashCode => contactEndpoint.hashCode ^ api.hashCode;

  ContactApiLinkBuilder({
    this.contactEndpoint = '',
    required this.api,
  });

  @override
  bool operator ==(covariant ContactApiLinkBuilder other) {
    if (identical(this, other)) return true;

    return other.contactEndpoint == contactEndpoint && other.api == api;
  }

  @override
  String toString() =>
      'ContactApiLinkBuilder(contactEndpoint: $contactEndpoint, api: $api)';

  ContactApiLinkBuilder copyWith({
    String? contactEndpoint,
    String? api,
  }) {
    return ContactApiLinkBuilder(
      contactEndpoint: contactEndpoint ?? this.contactEndpoint,
      api: api ?? this.api,
    );
  }
}
