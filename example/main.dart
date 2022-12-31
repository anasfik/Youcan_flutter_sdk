import 'package:youcan_flutter_sdk/src/store_front/instance/youcan_instance.dart';

void main() async {
  YouCan.instance.storeLink = 'https://example.youcan.shop';
  // final example = await YouCan.instance.products.pagination(1).limit(2).all();

  // print(example.map((e) => e.name).toList());

  // final example2 = await YouCan.instance.products.search("الخامس");
  // print(example2.map((e) => e.name).toList());

  // final exampleProductId = example.first.id;

  // final example3 = await YouCan.instance.products.one(exampleProductId);

  // print(example3.name);

  // final example4 = await YouCan.instance.categories.all();

  // print(example4.map((e) => e.name).toList());

  final allProducts = await YouCan.instance.products.all();
  final firstProduct = allProducts.first;
  final reviews = firstProduct.reviews;
  print(reviews.endPoint);
  print(reviews.productId);
  print(await reviews.limit(5).all());
}
