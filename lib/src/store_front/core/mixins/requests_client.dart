import '../../http_requests/http_requests.dart';

import "package:meta/meta.dart";

@protected
class RequestsClient {
  /// The internal instance of [HttpRequests].
  // TODO: prevent access to this from outside.
  @protected
  HttpRequests get httpRequests => HttpRequests();
}
