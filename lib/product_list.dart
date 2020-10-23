import 'package:flutter/material.dart';
import 'package:cardview/product_box.dart';

class ProductList extends StatelessWidget {
  ProductList({Key key, this.title}): super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product Listing")),
      body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
          children: <Widget>[
            ProductBox(
                name: "Xiaomi",
                description: " Ram 8gb Rom 256gb ",
                price: 2500000,
                image: "xiaomi.png"
            ),
            ProductBox(
                name: "Samsung",
                description: "Ram 12gb Rom 512gb",
                price: 3500000,
                image: "samsung.png"
            ),
            ProductBox(
                name: "Iphone",
                description: "Ram 12 Rom 256gb",
                price: 3000000,
                image: "iphone.png"
            ),
            ProductBox(
                name: "Oppo",
                description: "Ram 6gb Rom 128gb",
                price: 2700000,
                image: "oppo.png"
            ),
            ProductBox(
                name: "Vivo",
                description: "Ram 4gb Rom 128gb",
                price: 2600000,
                image: "vivo.png"
            ),
            ProductBox(
                name: "Infinix",
                description: "Ram 4gb Rom 64gb",
                price: 2400000,
                image: "infinix.png"
            ),
            ProductBox(
                name: "Realme",
                description: "Ram 3gb Rom 64gb",
                price: 2300000,
                image: "realme.png"
            ),
            ProductBox(
                name: "Huawei",
                description: "Ram 3gb Rom 32gb",
                price: 2200000,
                image: "huawei.png"
            ),
            ProductBox(
                name: "Asus",
                description: "Ram 3gb Rom 64gb",
                price: 2000000,
                image: "asus.png"
            ),

          ]
      ),
    );
  }
}