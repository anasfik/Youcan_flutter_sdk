extension RemoveHtmlTagsExtension on String {
  /// In case of a data us returned as HTML format ( could be from the Rest API ).
  /// Then you can use this methods to remove all HTML tags, and extract the plain text to be used.
  String removeHtmlTags() {
    return this.replaceAll(RegExp(r"<[^>]*>"), '');
  }
}
