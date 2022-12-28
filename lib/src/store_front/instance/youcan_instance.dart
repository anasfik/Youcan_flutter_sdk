import '../core/exception/store_link_not_found.dart';
import 'products/products.dart';

class YouCan {
  final Products products = Products();

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
    } else {
      return _internalStoreLink!;
    }
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
