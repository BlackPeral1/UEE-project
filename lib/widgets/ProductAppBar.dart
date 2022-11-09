import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class ProductAppBar extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      height: 150,
      decoration: BoxDecoration(
          color: PRIMARY_COLOR,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          )),
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
              child: InkWell(
                onTap: () {
                  print("cartPage");
                  Navigator.pushNamed(context, "cartPage");
                },
                child: Icon(
                  Icons.shopping_cart,
                  size: 32,
                  color: Colors.white,
                ),
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
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 5),
                  height: 50,
                  width: 300,
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: "Search here..."),
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.camera_alt,
                  size: 27,
                  color: PRIMARY_COLOR,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
