extension RemoveHtmlTags on String {
  String removeHtmlTags() {
    return this.replaceAll(RegExp(r"<[^>]*>"), '');
  }
}
