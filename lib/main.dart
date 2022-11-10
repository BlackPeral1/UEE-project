import 'package:first_project/pages/ItemComparePage.dart';
import 'package:first_project/pages/ItemPage.dart';
import 'package:first_project/pages/ProductPage.dart';
import 'package:flutter/material.dart';
import 'package:first_project/pages/HomePage.dart';
import 'package:first_project/pages/CartPage.dart';

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
        "/": (context) => HomePage(),
        "cartPage": (context) => CartPage(),
        "itemPage": (context) => ItemPage(),
        "productPage": (context) => ProductPage(),
        "itemComparePage": (context) => ItemComparePage()
      },
    );
  }
}
