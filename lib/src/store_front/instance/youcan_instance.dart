import 'package:youcan_flutter_sdk/src/store_front/http_requests/extensions/list_products.dart';

import '../core/exception/store_link_not_found.dart';
import '../core/models/product/product.dart';
import '../http_requests/http_requests.dart';

class YouCan {
  /// The internal instance of [HttpRequests].
  HttpRequests get _httpRequests => HttpRequests();

  /// Internal singleton instance of [YouCan].
  static YouCan _instance = YouCan._();

  // The internal store link.
  static String? _internalStoreLink;

  /// The singleton instance of [YouCan].
  static YouCan get instance => _instance;

  /// The public store link.
  String get storeLink {
    if (_internalStoreLink == null) {
      throw StoreLinkNotFoundException(
        """
        No associated store link is found.
        Please set the store link using : YouCan.instance.apiLink = 'your link'
        """,
      );
    }
    return _internalStoreLink!;
  }

  /// The public api link of the store.
  String get storeApiLink => storeLink.asApi();

  set storeLink(String newStoreLink) {
    assert(newStoreLink.isNotEmpty, 'The store link cannot be empty');
    if (newStoreLink.endsWith("/")) {
      newStoreLink = newStoreLink.substring(0, newStoreLink.length - 1);
    }
    _internalStoreLink = newStoreLink;
  }

  /// Returns all the products of the store.
  Future<List<Product>> allProducts() async {
    return await _httpRequests.listProducts();
  }

  /// YouCan is a singleton class, so you can't instantiate it, you can only use the predefined [instance].
  ///
  /// Example:
  /// ```dart
  /// YouCan.instance
  /// ```
  YouCan._();
}

extension _asApi on String {
  String asApi() {
    return '$this/api';
  }
}
