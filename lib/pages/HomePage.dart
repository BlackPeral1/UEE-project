import 'package:flutter/material.dart';
import 'package:first_project/widgets/HomeAppBar.dart';

class HomePage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        HomeAppBar(),
      ],
    ));
  }
}
