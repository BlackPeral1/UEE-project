import 'package:clippy_flutter/arc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../widgets/ItemAppBar.dart';
import '../widgets/ItemsBottomNavBar.dart';

import 'globals.dart' as globals;

class LoginPage extends StatelessWidget {
  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();
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
                margin: const EdgeInsets.only(top: 180, left: 20),
                child: const Text("Sign in ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 36,
                        color: Color.fromARGB(255, 46, 46, 46))),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10, left: 20),
                child: const Text("please sign in to continue ",
                    style: TextStyle(
                        fontSize: 16, color: Color.fromARGB(255, 46, 46, 46))),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30, left: 20),
                child: const Text("Email", style: TextStyle(fontSize: 16)),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
                padding: const EdgeInsets.only(left: 10, right: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(
                      color: Colors.grey,
                      style: BorderStyle.solid,
                      width: 0.80),
                ),
                child: TextFormField(
                  controller: email,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Enter your Email',
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30, left: 20),
                child: const Text("Password", style: TextStyle(fontSize: 16)),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
                padding: const EdgeInsets.only(left: 10, right: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(
                      color: Colors.grey,
                      style: BorderStyle.solid,
                      width: 0.80),
                ),
                child: TextFormField(
                  controller: password,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Enter your password',
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 20, left: 20),
                alignment: Alignment.centerRight,
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Color(0xFF69B289), // foreground
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "Forgot Password");
                  },
                  child: Text('Forgot Password'),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 20, left: 20),
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Color.fromARGB(255, 255, 255, 255),
                    backgroundColor: Color(0xFF69B289),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(18)),
                    ),
                    padding: EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 12), // background
                  ),
                  onPressed: () {
                    globals.name = 'asdsad';
                    FirebaseFirestore.instance
                        .collection('customers')
                        .where('email', isEqualTo: email.text)
                        .where('password', isEqualTo: password.text)
                        .get()
                        .then((snapshot) => {
                              // if (snapshot.docs[0].id == null)
                              //   {
                              //     globals.isLoggedIn = false,
                              //     showDialog(
                              //       context: context,
                              //       builder: (BuildContext context) {
                              //         return AlertDialog(
                              //           title: Text("Error"),
                              //           content:
                              //               Text("Invalid email or password"),
                              //           actions: [
                              //             TextButton(
                              //               child: Text("Close"),
                              //               onPressed: () {
                              //                 Navigator.of(context).pop();
                              //               },
                              //             ),
                              //           ],
                              //         );
                              //       },
                              //     )
                              //   }
                              // else
                              //   {
                              print(snapshot.docs[0].id),
                              globals.name = snapshot.docs[0].data()['name'],
                              globals.email = snapshot.docs[0].data()['email'],
                              globals.coin = snapshot.docs[0].data()['coin'],
                              globals.id = snapshot.docs[0].id,
                              globals.address =
                                  snapshot.docs[0].data()['address'],
                              globals.isLoggedIn = true
                              // Navigator.pushNamed(context, "Home")
                            })
                        .catchError((error) => {
                              print(error),
                              globals.isLoggedIn = false,
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text("Error"),
                                    content: Text("Invalid email or password"),
                                    actions: [
                                      TextButton(
                                        child: Text("Close"),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                      ),
                                    ],
                                  );
                                },
                              )
                            });
                    if (globals.isLoggedIn) {
                      Navigator.pushNamed(context, "home");
                    }
                  },
                  child: Text(
                    'Sign in',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 80,
        margin: const EdgeInsets.only(left: 80, right: 80),
        alignment: Alignment.center,
        child: Row(
          children: [
            Text(
              'Do not have an account?',
              textAlign: TextAlign.center,
            ),
            TextButton(
              style: TextButton.styleFrom(
                primary: Color(0xFF69B289), // foreground
              ),
              onPressed: () {
                Navigator.pushNamed(context, "registerPage");
              },
              child: Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}
