<br>
<p align='center' >
<img src="docs/assets/banner-logo.png" width='300px'/>
<h1 align='center'>YouCan API </h1>
</p>

<p align='center'>A wrappers into the YouCan platform API that enables developers to extend it's features inside a Dart/Flutter project</p>

<br>

## Motivation

Well, we might need a flexible and easy way to exchange requests form this api to our project, this could get developers to more unnecessary extra work such as dealing with configuring and using the API's multiple endpoints, loose types of the data, the http requests, modeling data...
<br>
<br>

This library aims to cover the developers from all those sides, and provide easy call methods that bring them to the goal.

## Usage

### Store configuration

To configure this library to get the data directly from your store, you will need to set it like this:

```dart
void main() {
  YouCan.instance.storeLink = 'https://example.youcan.shop'; // change it with your store's link
}
```

<br>

### Products

To get a `List<Product>` with all your store's product :

```dart
  List<Product> products = await YouCan.instance.allProducts();

```
