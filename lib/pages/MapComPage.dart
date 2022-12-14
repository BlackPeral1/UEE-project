import 'package:clippy_flutter/arc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
// Only import if required functionality is not exposed by default
import 'package:fluttertoast/fluttertoast.dart';

import '../widgets/Map.dart';

class MapComPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: ListView(
          children: [
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(25),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back_ios_new_sharp,
                      size: 30,
                      color: Color(0xFF4C53A5),
                    ),
                  ),
                ],
              ),
            ),
            Image.asset('images/map.png'),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            height: 160,
            width: double.infinity,
            child: Column(
              children: [
                const Text(
                  "Select Your Location",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black),
                ),
                const Text(
                  "Address :Malabe Road, Kaduwela",
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
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
                    showAlertDialog(context);
                  },
                  child: const Text(
                    'Assign Contract',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

showAlertDialog(BuildContext context) {
  // set up the buttons
  Widget cancelButton = TextButton(
    child: Text("No"),
    onPressed: () {},
  );
  Widget continueButton = TextButton(
    child: Text("Yes"),
    onPressed: () {
      Fluttertoast.showToast(
        msg: "Requested Successful",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
      );
      Navigator.pushNamed(context, "accountPage");
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Confirm Action"),
    content: Text(
        "Contractors will arrive weekly at the given time. Do you want to proceed?"),
    actions: [
      cancelButton,
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
