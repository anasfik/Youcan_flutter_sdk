import 'dart:developer';

/// This is the class that you will use to build your api links.
class ApiLinkBuilder {
  final String api;
  String apiEndpoint;
  String searchQuery;
  String page;

  String get fullApiLink {
    final result = "$api$apiEndpoint$page$searchQuery";
    log(result, name: "ApiLinkBuilder");
    print(
      result,
    );

    return result;
  }

  ApiLinkBuilder({
    required this.api,
    this.apiEndpoint = "",
    this.searchQuery = "",
    this.page = "",
  });
}
