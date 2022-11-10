import 'package:first_project/widgets/ItemWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../widgets/ItemAppBar.dart';

class ItemComparePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFEDECF2),
        body: ListView(children: [
          ItemAppBar(),
          Container(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Padding(
                        padding: EdgeInsets.all(16),
                        child: Image.asset(
                          "images/1.png",
                          height: 50,
                        )),
                  ],
                ),
      
                Column(
                  children: [
                    Padding(
                        padding: EdgeInsets.all(16),
                        child: Image.asset(
                          "images/1.png",
                          height: 50,
                        )),
                  ],
                ),
                Column(
                  children: [],
                ),
              ],
            ),
          )
        ]));
  }
}
