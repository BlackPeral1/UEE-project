import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class ProductAppBar extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(vertical: 25, horizontal: 25),
        child: Row(
          children: [
            Icon(Icons.sort, color: Color(0xFF4C53A5)),
            Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text("Product",
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFAC53A5)))),
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
                  color: Color(0xFF44C53A5),
                ),
              ),
            ),
          ],
        ));
  }
}
