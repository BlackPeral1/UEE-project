import 'package:badges/badges.dart';
import 'package:first_project/constants.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 25, horizontal: 25),
      child: Column(
        children: [
          Row(children: [
            Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text("All Products",
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: Colors.white))),
            Spacer(),
            Badge(
              badgeColor: Colors.red,
              padding: EdgeInsets.all(7),
              badgeContent: Text(
                "3",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ]),
          //Search widget
          Container(
              margin: EdgeInsets.symmetric(horizontal: 5, vertical: 20),
              padding: EdgeInsets.symmetric(horizontal: 15),
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
        ],
      ),
    );
  }
}
