import '../customers_api_link_builder.dart';

extension Endpoint on CustomersApiLinkBuilder {
  CustomersApiLinkBuilder endpoint(String endpoint) {
    return this.copyWith(
      customersEndpoint: endpoint,
    );
  }
}
