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

**YOU CAN HELP THIS PROJECT MAINTAINED CONTINUOUSLY BY THE AUTHOR WITH A STAR ✨✨**

<br><br>

## Motivation

Well, we might need a flexible and easy way to exchange requests from this API to our project, this could get developers more unnecessary extra work such as dealing with configuring and using the API's multiple endpoints, loose types of data, HTTP requests, modeling data...
<br>
<br>

This library aims to cover the developers from all those sides and provide easy call methods that bring them to their goals.

NOTE: This is still under development

# Documentation

Get the full documentation of all that this library offers <a href="https://anasfik.github.io/Youcan_flutter_sdk">from this link </a>

## Usage

### Store configuration

To configure this library to get the data directly from your store, you will need to set it like this:

```dart
void main() {
  YouCan.instance.storeLink = 'https://example.youcan.shop'; // change it with your store's link
}
```

### Authentication

You can authenticate your customers to your store by calling the `login()` and `create()` methods on the customers instance like this:

```dart
// Login
String loginToken = await YouCan.instance.customers.login(
        email: "YOUR EMAIL HERE",
        password: "YOUR PASSWORD HERE",
      );

// Sign Up.
CustomerCreationResponse customerCreationResult = await YouCan.instance.customers.create(
        email: "YOUR EMAIL HERE",
        password: "YOUR PASSWORD HERE",
        confirmPassword: "THE PASSWORD CONFIRMATION HERE",
      );

```

### Get Products

To get a List<Product>` with all your store's products:

```dart
  List<Product> products = await YouCan.instance.products.all();
```

### Get Reviews

You can also get a product's reviews as `List<Review>` like this:

```dart
  List<Product> products = await YouCan.instance.products.all();
  Product oneProduct = products.first;
  List<Review> review = await oneProduct.reviews();
```

### Get Categories

to get all your store's categories as `List<Category>`, you will need to do this:

```dart
  List<Category> categories = await YouCan.instance.categories.all();
```

### Querying

#### Search

Search queries are made easy:

```dart
  List<Product> products = await YouCan.instance.products.search("YOUR SEARCH TEXT").all();
```

#### Pagination

Pagination queries are also made easy, this example will get us the second page's products :

```dart
  List<Product> products = await YouCan.instance.products.pagination(2).all();
```

#### Limit

You can also limit the requested elements to a specific number

```dart
  List<Product> products = await YouCan.instance.products.limit(10).all();
```

### Combining Queries

in brief, you can query your targets (products, reviews...) based on your store's implementation way, this means that you can query by categories, pages, and limiting elements... :

```dart
  List<Product> products = await YouCan.instance.categories.category("Category id").products.pagination(2).limit(15).all();
```

### Contact

You can get in contact with your users using the `sendMessage()` :

```dart
bool isSent = await YouCan.instance.contact.sendMessage(
email: 'email',
subject: 'subject',
message: 'message',
),
```

### Contributing

Our open-source project is making a difference in the E-commerce/Flutter community and we need your help to continue improving and expanding it. any kind of contribution is welcome.

**Thank you!**

### License

```
MIT License

Copyright (c) 2023 Gwhyyy

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
