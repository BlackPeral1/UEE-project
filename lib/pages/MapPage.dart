import 'package:clippy_flutter/arc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:map_location_picker/map_location_picker.dart';
// import 'package:map_location_picker/map_location_picker.dart';
// Only import if required functionality is not exposed by default
import 'package:fluttertoast/fluttertoast.dart';
// import 'package:flutter_google_location_picker/flutter_google_location_picker.dart';
// import '../widgets/Map.dart';
import 'dart:developer';
import 'dart:convert';

class MapPage extends StatefulWidget {
  String size = '';
  String formattedAddress = '';
  String note = '';
  bool plastic = false;
  bool glass = false;
  bool metal = false;
  String company = '';
  MapPage({
    this.size = '',
    this.note = '',
    this.plastic = false,
    this.glass = false,
    this.metal = false,
    this.company = '',
  });

  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  // String formattedAddress = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: MapLocationPicker(
        apiKey: "AIzaSyCDYdxlL6xMDEo5znFjegGyU68PaXno0gY",
        onNext: (GeocodingResult? result) {
          // print(json.encode(result));
          if (result?.formattedAddress == null) {
            Fluttertoast.showToast(
                msg: "Please select a location",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.red,
                textColor: Colors.white,
                fontSize: 16.0);
          } else {
            createRequest(result?.formattedAddress.toString() ?? '');
            Fluttertoast.showToast(
              msg: "Requested Successful",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM,
            );
            Navigator.pushNamed(context, "requestPage");
          }
        },
      ),
      // bottomNavigationBar: BottomAppBar(
      //   child: Container(
      //     padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      //     height: 160,
      //     width: double.infinity,
      //     child: Column(
      //       children: [
      //         Text(
      //           "Select Your Location $note $size",
      //           style: TextStyle(
      //               fontWeight: FontWeight.bold,
      //               fontSize: 20,
      //               color: Colors.black),
      //         ),
      //         const Text(
      //           "Address :Malabe Road, Kaduwela",
      //           style: TextStyle(fontSize: 18, color: Colors.black),
      //         ),
      //         TextButton(
      //           style: TextButton.styleFrom(
      //             primary: Color.fromARGB(255, 255, 255, 255),
      //             backgroundColor: Color(0xFF69B289),
      //             shape: const RoundedRectangleBorder(
      //               borderRadius: BorderRadius.all(Radius.circular(18)),
      //             ),
      //             padding: EdgeInsets.symmetric(
      //                 horizontal: 100.0, vertical: 12), // background
      //           ),
      //           onPressed: () {
      //             Fluttertoast.showToast(
      //               msg: "Requested Successful",
      //               toastLength: Toast.LENGTH_SHORT,
      //               gravity: ToastGravity.BOTTOM,
      //             );
      //             Navigator.pushNamed(context, "requestPage");
      //           },
      //           child: const Text(
      //             'Send Request',
      //             style: TextStyle(fontSize: 18, color: Colors.white),
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }

  Future<void> createRequest(formattedAddress) async {
    final doc = FirebaseFirestore.instance.collection('requests').doc();
    final json = {
      'company': widget.company,
      'size': widget.size,
      'note': widget.note,
      'plastic': widget.plastic,
      'glass': widget.glass,
      'metal': widget.metal,
      'address': formattedAddress,
      'created': Timestamp.now()
    };

    await doc.set(json);
  }
}
