import 'package:clippy_flutter/arc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:first_project/pages/MapPage.dart';
import 'package:fluttertoast/fluttertoast.dart';

const List<String> list = <String>['Small', 'Medium', 'large'];

class EditReqDetailsPage extends StatefulWidget {
  var id;
  String size = 'Small';
  String note = '';
  bool plastic = false;
  bool glass = false;
  bool metal = false;
  EditReqDetailsPage(
      {this.id = '',
      this.note = '',
      this.plastic = false,
      this.glass = false,
      this.metal = false,
      this.size = 'Small'});

  @override
  _EditReqDetailsPageState createState() => _EditReqDetailsPageState();
}

class _EditReqDetailsPageState extends State<EditReqDetailsPage> {
  TextEditingController note = TextEditingController();

  void initState() {
    super.initState();
    note = new TextEditingController(text: widget.note);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Request"),
        backgroundColor: Color(0xFF69B289),
        centerTitle: true,
      ),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        child: Container(
          height: 700,
          width: double.infinity,
          child: ListView(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 20, left: 20),
                child: Text("Size", style: TextStyle(fontSize: 16)),
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
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    value: widget.size,
                    onChanged: (String? value) {
                      setState(() {
                        widget.size = value!;
                      });
                    },
                    items: list.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30, left: 20),
                child: const Text("Note", style: TextStyle(fontSize: 16)),
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
                  controller: note,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Enter your note',
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30, left: 20),
                child: const Text("Type", style: TextStyle(fontSize: 16)),
              ),
              CheckboxListTile(
                title: Text("Plastic"),
                value: widget.plastic,
                onChanged: (bool? newValue) {
                  setState(() {
                    widget.plastic = newValue!;
                  });
                },
                controlAffinity:
                    ListTileControlAffinity.leading, //  <-- leading Checkbox
              ),
              CheckboxListTile(
                title: Text("Glass"),
                value: widget.glass,
                onChanged: (bool? newValue) {
                  setState(() {
                    widget.glass = newValue!;
                  });
                },
                controlAffinity:
                    ListTileControlAffinity.leading, //  <-- leading Checkbox
              ),
              CheckboxListTile(
                title: Text("Metal"),
                value: widget.metal,
                onChanged: (bool? newValue) {
                  setState(() {
                    widget.metal = newValue!;
                  });
                },
                controlAffinity:
                    ListTileControlAffinity.leading, //  <-- leading Checkbox
              ),
              Container(
                margin: const EdgeInsets.only(right: 20, left: 20, top: 30),
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
                    editRequest();
                    Fluttertoast.showToast(
                      msg: "Updated Successful",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                    );
                    Navigator.pop(context, true);
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => MapPage(
                    //       size: dropdownValue,
                    //       note: note.text,
                    //       plastic: plastic,
                    //       glass: glass,
                    //       metal: metal,
                    //       company: company,
                    //     ),
                    //   ),
                    // );

                    // Navigator.pushNamed(context, "mapPage");
                  },
                  child: Text(
                    'Update',
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

  Future<void> editRequest() async {
    final doc =
        FirebaseFirestore.instance.collection('requests').doc(widget.id);
    final json = {
      'size': widget.size,
      'note': widget.note,
      'plastic': widget.plastic,
      'glass': widget.glass,
      'metal': widget.metal,
    };

    await doc.update(json);
  }
}
