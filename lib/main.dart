import 'package:first_project/pages/ItemComparePage.dart';
import 'package:first_project/pages/ItemPage.dart';
import 'package:first_project/pages/ProductPage.dart';
import 'package:first_project/pages/RequestPage.dart';
import 'package:first_project/pages/ReqDetailsPage.dart';
import 'package:first_project/pages/MapPage.dart';
import 'package:flutter/material.dart';
import 'package:first_project/pages/SpalshPage.dart';
import 'package:first_project/pages/HomePage.dart';
import 'package:first_project/pages/AccountPage.dart';
import 'package:first_project/pages/CartPage.dart';
import 'package:first_project/pages/LoginPage.dart';
import 'package:first_project/pages/RegisterPage.dart';
import 'package:first_project/pages/ContractReqDetailsPage.dart';
import 'package:first_project/pages/CompanyList.dart';
import 'package:first_project/pages/MapComPage.dart';
import 'package:first_project/pages/RegisterCompanyA.dart';
import 'package:first_project/pages/RegisterCompanyB.dart';
import 'package:first_project/pages/RegisterCustomer.dart';

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
        "home": (context) => HomePage(),
        "cartPage": (context) => CartPage(),
        "itemPage": (context) => ItemPage(),
        "productPage": (context) => ProductPage(),
        "requestPage": (context) => RequestPage(),
        "reqDetailsPage": (context) => ReqDetailsPage(),
        "mapPage": (context) => MapPage(),
        "loginPage": (context) => LoginPage(),
        "registerPage": (context) => RegisterPage(),
        "accountPage": (context) => AccountPage(),
        "contractReqDetailsPage": (context) => ContractReqDetailsPage(),
        "companyList": (context) => CompanyList(),
        "mapComPage": (context) => MapComPage(),
        "itemComparePage": (context) => ItemComparePage(),
        "registerCompanyA": (context) => RegisterCompanyA(),
        "registerCompanyB": (context) => RegisterCompanyB(),
        "registerCustomer": (context) => RegisterCustomer(),
      },
    );
  }
}
