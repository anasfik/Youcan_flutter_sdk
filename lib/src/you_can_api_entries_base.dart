import 'store_front/http_requests/http_requests.dart';

abstract class ApiEntriesBase<T> {
  int? page;
  String? searchQuery;
  int? limitQuery;
  String? get endPoint;
  Future<List<T>> all();
  Future<T> one(String id);
  Future<List<T>> search(String search);
  ApiEntriesBase pagination(int page);
  ApiEntriesBase limit(int page);
}

mixin RequestsClient {
  /// The internal instance of [HttpRequests].
  HttpRequests get httpRequests => HttpRequests();
}
