import 'package:youcan_flutter_sdk/src/store_front/instance/youcan_instance.dart';

void main() async {
  YouCan.instance.storeLink = 'https://example.youcan.shop';

  final example = await YouCan.instance.allProducts();

  print(example.map((e) => e.name).toList());

  final example2 = await YouCan.instance.searchProducts("الخامس");

  print(example2.map((e) => e.name).toList());
}
