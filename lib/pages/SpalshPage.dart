import 'package:clippy_flutter/arc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../widgets/Map.dart';

class SpalshPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: ListView(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 60),
            ),
            Image.asset('images/main.png'),
            Container(
              alignment: Alignment.center,
              child: const Text("All in one place",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Color.fromARGB(255, 46, 46, 46))),
            ),
            Container(
              margin: const EdgeInsets.only(left: 40, right: 40),
              alignment: Alignment.center,
              child: const Text(
                  "We make buying and selling process of household waste, simple and easy.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 16, color: Color.fromARGB(255, 46, 46, 46))),
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            height: 160,
            width: double.infinity,
            child: Column(
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    primary: Color.fromARGB(255, 255, 255, 255),
                    backgroundColor: Color(0xFF69B289),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(18)),
                    ),
                    padding: EdgeInsets.symmetric(
                        horizontal: 100.0, vertical: 12), // background
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "registerPage");
                  },
                  child: const Text(
                    'Get started',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 50, right: 50),
                  alignment: Alignment.center,
                  child: Row(
                    children: [
                      Text(
                        'Already have an account? ',
                        textAlign: TextAlign.center,
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          primary: Color(0xFF69B289), // foreground
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, "loginPage");
                        },
                        child: Text('Sign in'),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
