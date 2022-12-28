import 'package:youcan_flutter_sdk/src/store_front/instance/product/product.dart';
import 'package:youcan_flutter_sdk/src/store_front/instance/products/extensions/all.dart';
import 'package:youcan_flutter_sdk/src/store_front/instance/products/extensions/limit.dart';
import 'package:youcan_flutter_sdk/src/store_front/instance/products/extensions/pagination.dart';
import 'package:youcan_flutter_sdk/src/store_front/instance/products/extensions/search.dart';
import 'package:youcan_flutter_sdk/src/store_front/instance/youcan_instance.dart';

void main() async {
  YouCan.instance.storeLink = 'https://example.youcan.shop';

  final example = await YouCan.instance.products.pagination(1).limit(2).all();

  print(example.map((e) => e.name).toList());

  final example2 = await YouCan.instance.products.search("الخامس");
  print(example2.map((e) => e.name).toList());

  final exampleProductId = example.first.id;

  final example3 = await YouCan.instance.products.one(exampleProductId);

  print(example3.name);
}
