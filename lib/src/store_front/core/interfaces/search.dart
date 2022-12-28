abstract class SearchImpl<T> {
  String? searchQuery;
  Future<List<T>> search(String search);
}
