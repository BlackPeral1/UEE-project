import 'package:firebase_core/firebase_core.dart';

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

import 'package:first_project/pages/company/Products/update_product.dart';
import 'package:first_project/pages/company/Products/update_product.dart';
import 'package:first_project/pages/company/Products/add_product.dart';
import 'package:first_project/pages/company/Products/product_list.dart';
import 'package:first_project/pages/company/Cutomers/pending_customers.dart';
import 'package:first_project/pages/company/Cutomers/approved_customers.dart';
import 'package:first_project/pages/company/Cutomers/generateReport.dart';
import 'package:first_project/pages/company/Cutomers/declined_customers.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
        // "itemPage": (context) => ItemPage(),
        "productPage": (context) => ProductPage(),
        "requestPage": (context) => RequestPage(),
        // "reqDetailsPage": (context) => ReqDetailsPage(),
        // "mapPage": (context) => MapPage(),
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
        "addProduct": (context) => AddProduct(),
        "generateReport": (context) => GenerateReport(),
        "productlist": (context) => AllProducts(),
        "pending_customers": (context) => PendingCustomers(),
        "approved_customers": (context) => ApprovedCustomers(),
        "declined_customers": (context) => DeclinedCustomers(),
      },
    );
  }
}
