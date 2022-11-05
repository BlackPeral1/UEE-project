import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
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
                child: Text("Redivivus",
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFAC53A5)))),
            Spacer(),
            Badge(
              child: InkWell(
                onTap: () {},
                child: Icon(
                  Icons.shop_outlined
                ),
              ),
            ),
          ],
        ));
  }
}
