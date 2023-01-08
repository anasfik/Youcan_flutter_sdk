import '../instance/you_can_instance.dart';

/// This represents the facade of the http requests that we will fetch the data with.
/// each method will return a Future of the data that we will fetch.
/// each method will be a separate extension on this class.
class HttpRequests {
  final String storeApiLink = YouCan.instance.storeApiLink;
}
