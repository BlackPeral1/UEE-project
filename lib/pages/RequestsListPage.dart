import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:first_project/pages/ReqDetailsPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/CategoriesWidget.dart';
import '../widgets/ItemsWidget.dart';
import 'EditReqDetailsPage.dart';

class RequestsListPage extends StatefulWidget {
  @override
  RequestsListPageState createState() => RequestsListPageState();
}

class RequestsListPageState extends State<RequestsListPage> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Request List"),
        backgroundColor: Color(0xFF69B289),
        centerTitle: true,
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('requests').snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
          return ListView.builder(
            itemCount: streamSnapshot.data?.docs.length,
            itemBuilder: (ctx, index) => Container(
              margin: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
              ),
              padding: EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(103, 120, 120, 120),
                    blurRadius: 10.0, // soften the shadow
                    spreadRadius: 2.0, //extend the shadow
                    offset: Offset(
                      2.0, // Move to right 10  horizontally
                      2.0, // Move to bottom 10 Vertically
                    ),
                  )
                ],
              ),
              child: Column(children: [
                Text(
                  streamSnapshot.data?.docs[index]['company'],
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(streamSnapshot.data?.docs[index]['address']),
                Text((streamSnapshot.data?.docs[index]['created'])
                    .toDate()
                    .toString()
                    .substring(0, 16)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                        primary: Color.fromARGB(255, 255, 255, 255),
                        backgroundColor: Color(0xFF69B289),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(18)),
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: 15.0), // foreground
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EditReqDetailsPage(
                              id: streamSnapshot.data?.docs[index].id,
                              size: streamSnapshot.data?.docs[index]['size'],
                              note: streamSnapshot.data?.docs[index]['note'],
                              glass: streamSnapshot.data?.docs[index]['glass'],
                              metal: streamSnapshot.data?.docs[index]['metal'],
                              plastic: streamSnapshot.data?.docs[index]
                                  ['plastic'],
                            ),
                          ),
                        );
                      },
                      child: Text('Edit'),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        primary: Color.fromARGB(255, 255, 255, 255),
                        backgroundColor: Color(0xFF69B289),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(18)),
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: 15.0), // foreground
                      ),
                      onPressed: () {
                        // Navigator.pushNamed(context, "reqDetailsPage");
                        showAlertDialog(
                            context, streamSnapshot.data?.docs[index].id);
                      },
                      child: Text('Cancel'),
                    ),
                  ],
                )
              ]),
            ),
          );
        },
      ),
    );
  }
}

showAlertDialog(BuildContext context, id) {
  // set up the buttons
  Widget cancelButton = TextButton(
    child: Text("No"),
    onPressed: () {
      Navigator.pop(context);
    },
  );
  Widget continueButton = TextButton(
    child: Text("Yes"),
    onPressed: () {
      final doc = FirebaseFirestore.instance.collection('requests').doc(id);
      doc.delete();

      Fluttertoast.showToast(
        msg: "Successfuly Cancelled",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
      );
      Navigator.pop(context);
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Confirm Action"),
    content: Text("Are you sure you want to cancel?"),
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
