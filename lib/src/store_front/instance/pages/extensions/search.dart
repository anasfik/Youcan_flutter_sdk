import 'package:youcan_flutter_sdk/src/store_front/instance/pages/pages.dart';

extension SearchExt on Pages {
  Pages searchExtension(String search) {
    this.searchQuery = search;

    return this;
  }
}
