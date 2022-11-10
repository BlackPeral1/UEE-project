import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class ItemWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
          padding: EdgeInsets.all(16),
          child: Image.asset(
            "images/1.png",
            height: 200,
          )),
    ]);
  }
}
