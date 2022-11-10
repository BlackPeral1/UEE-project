import 'package:clippy_flutter/arc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../widgets/ItemAppBar.dart';
import '../widgets/ItemsBottomNavBar.dart';

class RegisterCustomer extends StatelessWidget {
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
                margin: const EdgeInsets.only(top: 10, left: 20),
                child: const Text("Register your account",
                    style: TextStyle(
                        fontSize: 16, color: Color.fromARGB(255, 46, 46, 46))),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
                child: const Text("Name", style: TextStyle(fontSize: 16)),
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
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Name',
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
                child: const Text("Address", style: TextStyle(fontSize: 16)),
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
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Address',
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
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
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Email',
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
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
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Password',
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20, right: 20, left: 20),
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
                    Navigator.pushNamed(context, "home");
                  },
                  child: Text(
                    'Register',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
