import 'dart:io';
import 'package:cardview/product_list.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final title = "Grid Menu";

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: GridView.count(
          crossAxisCount: 4,
          children: List.generate(menus.length, (index) {
            return Center(
                child: MenuCard(menu: menus[index])
            );
          }),
        ),
      ),
    );
  }
}


class Menu {
  const Menu({this.title, this.icon});

  final String title;
  final String icon;
}

const List<Menu> menus = const [
  const Menu(title: "Xiaomi", icon: "assets/xiaomi.png"),
  const Menu(title: "Samsung", icon: "assets/samsung.png"),
  const Menu(title: "Oppo", icon: "assets/oppo.png"),
  const Menu(title: "Vivo", icon: "assets/vivo.png"),
  const Menu(title: "Infinix", icon: "assets/infinix.png"),
  const Menu(title: "Realme", icon: "assets/realme.png"),
  const Menu(title: "Huawei", icon: "assets/huawei.png"),
  const Menu(title: "Asus", icon: "assets/asus.png"),
];

class MenuCard extends StatelessWidget {
  const MenuCard({Key key, this.menu}) : super(key: key);

  final Menu menu;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: InkWell(
        onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ProductList()
          ),
        );
      },

        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.all(5),),
              Expanded(
                  child:
                  Image.asset(menu.icon, height: 80.0, width: 80.0, fit: BoxFit.contain,)
              ),
              Text(menu.title, style: TextStyle(fontSize: 12.0)),
              Padding(padding: EdgeInsets.all(5),),
            ]
        ),
      ),
    );
  }

  void _showDialog(BuildContext context, Menu menu) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: new Text("Keterangan"),
            content: new Text("Ini menu " + menu.title),
            actions: <Widget>[
              new FlatButton(
                child: new Text("Close"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        }
    );
  }


}

