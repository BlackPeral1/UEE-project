import 'package:clippy_flutter/arc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../widgets/ItemAppBar.dart';
import '../widgets/ItemsBottomNavBar.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        child: Container(
          height: 700,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/loginbg.png"),
              alignment: Alignment.topCenter,
            ),
          ),
          child: ListView(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 80, left: 20),
                child: const Text("Register",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 36,
                        color: Color.fromARGB(255, 46, 46, 46))),
              ),
              Container(
                margin: const EdgeInsets.only(top: 5, left: 20),
                child: const Text("Register your account",
                    style: TextStyle(
                        fontSize: 16, color: Color.fromARGB(255, 46, 46, 46))),
              ),
              Container(
                margin: const EdgeInsets.only(top: 60, left: 40, right: 40),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: const Text(
                        "Become a customer",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 46, 46, 46),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: const Text(
                        "If you expect to give garbage or To buy recycled goods",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 46, 46, 46),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10, bottom: 30),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          primary: Color.fromARGB(255, 255, 255, 255),
                          backgroundColor: Color(0xFF69B289),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(18)),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 10), // background
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, "registerCustomer");
                        },
                        child: const Text(
                          'Join Now',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                    top: 10, bottom: 10, left: 40, right: 40),
                child: Divider(
                    color: Color.fromARGB(255, 116, 116, 116), thickness: 2),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30, left: 40, right: 40),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: const Text(
                        "Become a collector ",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 46, 46, 46),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: const Text(
                        "If you are a garbage collection company",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 46, 46, 46),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          primary: Color.fromARGB(255, 255, 255, 255),
                          backgroundColor: Color(0xFF69B289),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(18)),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 10), // background
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, "registerCompanyA");
                        },
                        child: const Text(
                          'Join Now',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 80,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Already have an account?',
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
      ),
    );
  }
}
