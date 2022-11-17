import 'package:clippy_flutter/arc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../widgets/ItemAppBar.dart';
import '../widgets/ItemsBottomNavBar.dart';
import 'globals.dart' as globals;

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  TextEditingController name = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    name.text = globals.name;
    address.text = globals.address;
    email.text = globals.email;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        title: const Text("Profile"),
        backgroundColor: Color(0xFF69B289),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          height: 700,
          width: double.infinity,
          child: ListView(
            children: [
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
                  controller: name,
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
                  controller: address,
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
                  controller: email,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Email',
                  ),
                ),
              ),
              // Container(
              //   margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
              //   child: const Text("Password", style: TextStyle(fontSize: 16)),
              // ),
              // Container(
              //   margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
              //   padding: const EdgeInsets.only(left: 10, right: 10),
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(15.0),
              //     border: Border.all(
              //         color: Colors.grey,
              //         style: BorderStyle.solid,
              //         width: 0.80),
              //   ),
              //   child: TextFormField(
              //     controller: password,
              //     decoration: const InputDecoration(
              //       border: InputBorder.none,
              //       hintText: 'Password',
              //     ),
              //   ),
              // ),
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
                    addCustomer();
                    Fluttertoast.showToast(
                      msg: "Updated Successful",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                    );
                    Navigator.pushNamed(context, "home");
                  },
                  child: Text(
                    'Update',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20, right: 20, left: 20),
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Color.fromARGB(255, 255, 255, 255),
                    backgroundColor: Color.fromARGB(255, 239, 70, 70),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(18)),
                    ),
                    padding: EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 12), // background
                  ),
                  onPressed: () {
                    FirebaseFirestore.instance
                        .collection('customers')
                        .doc(globals.id)
                        .delete();
                    Fluttertoast.showToast(
                      msg: "Account Deleted Successful",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                    );
                    Navigator.pushNamed(context, "/");
                  },
                  child: Text(
                    'Delete Account',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> addCustomer() async {
    final doc =
        FirebaseFirestore.instance.collection('customers').doc(globals.id);
    final json = {
      'name': name.text,
      'address': address.text,
      'email': email.text,
      'coin': '0',
      'created': Timestamp.now()
    };

    globals.name = name.text;
    globals.address = address.text;
    globals.email = email.text;
    await doc.update(json);
  }
}
