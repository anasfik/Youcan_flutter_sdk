<br>
<p align='center' >
<img src="docs/assets/banner-logo.png" width='300px'/>
<h1 align='center'>YouCan API </h1>
<br>
<p align="center"><img alt="GitHub" src="https://img.shields.io/github/license/anasfik/Youcan_Flutter_SDK?style=for-the-badge" />
<img alt="Star on GitHub" src="https://img.shields.io/github/stars/anasfik/Youcan_Flutter_SDK.svg?style=for-the-badge" />
<img alt="GitHub contributors" src="https://img.shields.io/github/contributors/anasfik/Youcan_Flutter_SDK?style=for-the-badge">
<img alt="GitHub commit activity" src="https://img.shields.io/github/commit-activity/y/anasfik/Youcan_Flutter_SDK?color=red&style=for-the-badge">
<img alt="GitHub top language" src="https://img.shields.io/github/languages/top/anasfik/Youcan_Flutter_SDK?style=for-the-badge" />
<img alt="GitHub language count" src="https://img.shields.io/github/languages/count/anasfik/Youcan_Flutter_SDK?style=for-the-badge">
</p></p>


<h3><p align='center'>A wrapper into the YouCan platform API that enables developers to extend its features inside a Dart/Flutter project</p></h3>
<br>

**You can help this open source project grows with a star ✨✨**

<br><br>

## Motivation

Well, we might need a flexible and easy way to exchange requests from this API to our project, this could get developers more unnecessary extra work such as dealing with configuring and using the API's multiple endpoints, loose types of data, HTTP requests, modeling data...
<br>
<br>

This library aims to cover the developers from all those sides and provide easy call methods that bring them to their goals.

## Usage

NOTE: this still under devllopment

### Store configuration

To configure this library to get the data directly from your store, you will need to set it like this:

```dart
void main() {
  YouCan.instance.storeLink = 'https://example.youcan.shop'; // change it with your store's link
}
```


### Get Products

To get a `List<Product>` with all your store's products:

```dart
  List<Product> products = await YouCan.instance.products.all();
```

### Querying Products

in brief, you can query products based on your store's way, by categories, pages, limiting...

```dart
  List<Product> products = await YouCan.instance.categories.category("Category id").products.pagination(2).limit(15).all();
```

### Search

Search queries are also made easy:

```dart
  List<Product> products = await YouCan.instance.products.search("YOUR SEARCH TEXT").limit(1).all();
```

# Documentation

Get full documentation of all that this library offers <a href="https://anasfik.github.io/Youcan_Flutter_SDK/usage">from this link </a>

### Contributing

Our open-source project is making a difference in the E-commerce/Flutter community and we need your help to continue improving and expanding it. any kind of contribution is welcome.

**Thank you!**
