import '../core/exception/store_link_not_found.dart';

class YouCan {
  /// Internal singleton instance of [YouCan].
  static YouCan _instance = YouCan._();

  // The singleton instance of [YouCan].
  static YouCan get instance => _instance;

  // The internal link of the API.
  static String? _internalApiLink;

  /// The public store link of the API.
  String get apiLink {
    if (_internalApiLink == null) {
      throw StoreLinkNotFoundException(
        """
        No associated store link is found.
        Please set the store link using : YouCan.instance.apiLink = 'your link'
        """,
      );
    }
    return _internalApiLink!;
  }

  set apiLink(String value) {
    assert(value.isNotEmpty, 'The store link cannot be empty');
    if (value.endsWith("/")) {
      value = value.substring(0, value.length - 1);
    }
    _internalApiLink = value;
  }

  /// YouCan is a singleton class, so you can't instantiate it, you can only use the predefined [instance].
  ///
  /// Example:
  /// ```dart
  /// YouCan.instance
  /// ```
  YouCan._();
}
