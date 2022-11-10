import 'package:first_project/constants.dart';
import 'package:flutter/material.dart';

class ItemAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios_new_sharp,
              size: 30,
              color: PRIMARY_COLOR,
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
