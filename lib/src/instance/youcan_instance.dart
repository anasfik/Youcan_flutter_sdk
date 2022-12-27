class YouCan {
  /// Internal singleton instance of [YouCan].
  static YouCan _instance = YouCan._();

  /// The singleton instance of [YouCan].
  static YouCan get instance => _instance;

  /// YouCan is a singleton class, so you can't instantiate it, you can only use the predefined [instance].
  ///
  /// Example:
  /// ```dart
  /// YouCan.instance
  /// ```
  YouCan._();
}
