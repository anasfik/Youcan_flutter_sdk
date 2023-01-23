import 'package:you_can_flutter_sdk/src/store_front/instance/customers/customers.dart';
import 'package:you_can_flutter_sdk/src/store_front/instance/pages/pages.dart';

import '../core/exception/store_link_not_found.dart';
import 'categories/categories.dart';
import 'contact/contact.dart';
import 'products/products.dart';
import 'store/store.dart';

export 'categories/categories.dart';

/// The main class of the [YouCan] package, this is the singleton class that you will use to access the api.
/// You can access the api using the predefined [instance] of this class.
/// Example:
/// ```dart
/// YouCan.instance
/// ```
class YouCan {
  /// Internal singleton instance of [YouCan].
  /// This is the only instance of [YouCan] that will be used.
  /// This is a private constructor.
  /// You can only access the instance using the predefined [instance].

  static YouCan _instance = YouCan._();

  // The internal store link.
  static String? _internalStoreLink;

  /// The singleton instance of [YouCan].
  /// This is the only instance of [YouCan] that will be used.
  /// Example:
  /// ```dart
  /// YouCan.instance
  /// ```
  static YouCan get instance => _instance;

  /// The public [store] instance, use this when you want to access the store informations api.
  /// Example:
  /// ```dart
  /// YouCan.instance.store
  /// ```
  Store get store => Store();

  /// The public [products] instance, use this when you want to access the products api.
  /// Example:
  /// ```dart
  /// YouCan.instance.products
  /// ```
  Products get products => Products();

  /// The public [categories] instance, use this when you want to access the categories api.
  /// Example:
  /// ```dart
  /// YouCan.instance.categories
  /// ```
  Categories get categories => Categories();

  /// The public [customers] instance, use this when you want to access the customers api.
  /// Example:
  /// ```dart
  /// YouCan.instance.customers
  /// ```
  Customers get customers => Customers();

  /// The public [pages] instance, use this when you want to access the pages api.
  /// Example:
  /// ```dart
  /// YouCan.instance.pages
  /// ```
  Pages get pages => Pages();

  /// The public [contact] instance, use this when you want to access the contact api.
  /// Example:
  /// ```dart
  /// YouCan.instance.contact
  /// ```
  Contact get contact => Contact();

  /// The public store link, if this is not set, it will throw an exception.
  /// use this when you want to access the store link.
  /// Example:
  /// ```dart
  /// YouCan.instance.storeLink
  /// ```
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
  /// use this when you want to access the api link of the store.
  /// Example:
  /// ```dart
  /// YouCan.instance.storeApiLink
  /// ```
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

// This is a private extension on the api link of the [YouCan] class.
extension _asApi on String {
  /// This will return the api link of the store.
  String asApi() {
    return '$this/api';
  }
}
