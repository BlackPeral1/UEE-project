import 'package:badges/badges.dart';
import 'package:first_project/constants.dart';
import 'package:flutter/material.dart';
import '../pages/globals.dart' as globals;

class HomeAppBar extends StatelessWidget {
  // This widget is the root of your application.
  final coin = globals.coin;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 0),
              padding: EdgeInsets.all(7),
              decoration: BoxDecoration(
                  color: PRIMARY_COLOR,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20))),
              child: Text(
                "Coin $coin",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ]),
          //Search widget
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
                margin: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
                // padding: EdgeInsets.symmetric(horizontal: 15),
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text("All Products",
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: PRIMARY_COLOR)))
          ])
        ],
      ),
    );
  }
}
