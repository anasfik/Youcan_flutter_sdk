import 'package:youcan_flutter_sdk/src/store_front/core/exception/invalid_data.dart';
import 'package:youcan_flutter_sdk/youcan_flutter_sdk.dart';

void main() async {
  YouCan.instance.storeLink = 'https://georgena.shop';
  // final pagesQuery = YouCan.instance.pages;

  // final pagesQuerywithSearch = YouCan.instance.pages.search("contact");
  // print(pagesQuerywithSearch.endPoint);
  // print(await pagesQuerywithSearch.all());

  // final pagesQuerywithLimit = YouCan.instance.pages.limit(2);
  // print(pagesQuerywithLimit.endPoint);
  // print(await pagesQuerywithLimit.all());

  // final pagesQuerywithSearchAndLimit =
  //     YouCan.instance.pages.search("c").limit(2);
  // print(pagesQuerywithSearchAndLimit.endPoint);
  // print(await pagesQuerywithSearchAndLimit.all());

  // final example = await YouCan.instance.products.pagination(1).limit(2).all();

  // print(example.map((e) => e.name).toList());

  // final example2 = await YouCan.instance.products.search("الخامس").all();
  // print(example2.map((e) => e.name).toList());

  // final exampleProductId = example.first.id;

  // final example3 = await YouCan.instance.products.one(exampleProductId);

  // print(example3.name);

  // final example4 = await YouCan.instance.categories.all();

  // final example5 = await YouCan.instance.categories
  //     .category(example4.first.id)
  //     .products
  //     .all();

  // print(example4.map((e) => e.name).toList());

  // final allProducts = await YouCan.instance.products.all();
  // final firstProduct = allProducts.first;
  // final reviews = firstProduct.reviews;
  // print(reviews.endPoint);
  // print(await reviews.limit(5).all());

  // final send = await YouCan.instance.contact.sendMessage(
  //   email: "ansgk@gmail.com",
  //   message: "test",
  //   subject: "test",
  // );

  // print(send);

  // final res = await YouCan.instance.customers.create(
  //   email: "ansgk.us@gmail.com",
  //   password: "ansgk.us",
  //   confirmPassword: "ansgk.us",
  // );

  // print(res);

  final loginRes = await YouCan.instance.customers.login(
    email: "ansgk.us@gmail.com",
    password: "ansgk.us",
  );

  print(loginRes);
}
