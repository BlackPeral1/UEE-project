import 'package:flutter/material.dart';

// import 'package:first_project/pages/company/Products/update_product.dart';
// import 'package:first_project/pages/company/Products/add_product.dart';
import 'package:first_project/pages/company/Products/product_list.dart';
// import 'package:first_project/pages/company/Cutomers/pending_customers.dart';
// import 'package:first_project/pages/company/Cutomers/approved_customers.dart';
// import 'package:first_project/pages/company/Cutomers/generateReport.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(color: Colors.green),
      ),
      // routes: {"/": (context) => HomePage()},
      // routes: {"/": (context) => ApprovedCustomers()},
      // routes: {"/": (context) => const AddProduct()},
      // routes: {"/": (context) => const UpdateProduct()},
      routes: {"/": (context) => const AllProducts()},
      // routes: {"/": (context) => const PendingCustomers()},
      // routes: {"/": (context) => const DeclinedCustomers()},
      // routes: {"/": (context) => const ApprovedCustomers()},
      // routes: {"/": (context) => const GenerateReport()},
    );
  }
}
