import 'package:badges/badges.dart';
import 'package:first_project/constants.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(
        vertical: 25,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 0),
              padding: EdgeInsets.all(7),
              decoration: BoxDecoration(
                color: PRIMARY_COLOR,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20))
              ),
              child: Text(
                "Coin 120",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ]),
          //Search widget
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                // padding: EdgeInsets.symmetric(horizontal: 15),
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
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
