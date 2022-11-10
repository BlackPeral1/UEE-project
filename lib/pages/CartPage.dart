import 'package:flutter/material.dart';

import '../constants.dart';
import '../widgets/CartAppBar.dart';
import '../widgets/CartBottomNavBar.dart';
import '../widgets/CartItemSample.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        CartAppBar(),
        Container(
          height: 700,
          padding: EdgeInsets.only(top: 15),
          decoration: BoxDecoration(
            color: Color(0xFFEDECF2),
          ),
          child: Column(
            children: [
              CartItemSamples(),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                padding: EdgeInsets.symmetric(horizontal: 0),
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      height: 50,
                      width: 200,
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Enter you coupon"),
                      ),
                    ),
                    Spacer(),
                    Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                          color: PRIMARY_COLOR,
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        "Apply",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ]),
      bottomNavigationBar: CartBottomNavBar(),
    );
  }
}
