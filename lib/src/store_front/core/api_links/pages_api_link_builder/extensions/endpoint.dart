import '../Pages_api_link_builder.dart';

extension EndPoint on PagesApiLinkBuilder {
  PagesApiLinkBuilder endpoint(String endPoint) {
    return this.copyWith(
      pagesEndpoint: endPoint,
    );
  }
}
