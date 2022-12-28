import 'dart:developer';

/// This is the class that you will use to build your api links.
class ApiLinkBuilder {
  final String api;
  String apiEndpoint;
  String searchQuery;

  String get fullApiLink {
    final result = "$api$apiEndpoint$searchQuery";
    log(result, name: "ApiLinkBuilder");

    return result;
  }

  ApiLinkBuilder({
    required this.api,
    this.apiEndpoint = "",
    this.searchQuery = "",
  });
}
