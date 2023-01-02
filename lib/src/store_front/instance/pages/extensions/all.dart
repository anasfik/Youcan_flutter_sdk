import '../pages.dart';

extension AllExt on Pages {
  Future<List> allExtension() async {
    return await all();
  }
}
