import '../../http_requests/http_requests.dart';

class Products {
  int? page;
  String? searchQuery;
  int? limitQuery;

  /// The internal instance of [HttpRequests].
  HttpRequests get httpRequests => HttpRequests();
}
