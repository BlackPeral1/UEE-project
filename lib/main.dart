import 'package:first_project/pages/ItemPage.dart';
import 'package:first_project/pages/ProductPage.dart';
import 'package:first_project/pages/RequestPage.dart';
import 'package:first_project/pages/ReqDetailsPage.dart';
import 'package:first_project/pages/MapPage.dart';
import 'package:flutter/material.dart';
import 'package:first_project/pages/SpalshPage.dart';
import 'package:first_project/pages/HomePage.dart';
import 'package:first_project/pages/CartPage.dart';
import 'package:first_project/pages/LoginPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      routes: {
        "/": (context) => SpalshPage(),
        "cartPage": (context) => CartPage(),
        "itemPage": (context) => ItemPage(),
        "productPage": (context) => ProductPage(),
        "requestPage": (context) => RequestPage(),
        "reqDetailsPage": (context) => ReqDetailsPage(),
        "mapPage": (context) => MapPage(),
        "loginPage": (context) => LoginPage(),
      },
    );
  }
}
