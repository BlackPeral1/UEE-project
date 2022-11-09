import 'package:flutter/material.dart';
import '../constants.dart';

class CategoriesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 0; i < 6; i++)
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              decoration: BoxDecoration(
                  color: Colors.greenAccent.withOpacity(.2), borderRadius: BorderRadius.circular(20)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '${listOfCategories[i]}',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: PRIMARY_COLOR),
                  )
                ],
              ),
            )
        ],
      ),
    );
  }

  List<String> listOfCategories = [
    'All',
    'Electric',
    'Home & garden',
    'Jewelry',
    'Metal',
    'Wooden',
  ];
}
