import '../../http_requests/http_requests.dart';

mixin RequestsClient {
  /// The internal instance of [HttpRequests].
  HttpRequests get httpRequests => HttpRequests();
}
