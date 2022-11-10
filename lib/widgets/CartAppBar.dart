import 'package:first_project/constants.dart';
import 'package:flutter/material.dart';

class CartAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              // goes back to previous screen/page
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios_new_sharp,
              size: 30,
              color: PRIMARY_COLOR,
            ),
          ),
          Padding(
              padding: EdgeInsets.only(left: 120),
              child: Text("My Cart",
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Colors.black))),
        ],
      ),
    );
  }
}
