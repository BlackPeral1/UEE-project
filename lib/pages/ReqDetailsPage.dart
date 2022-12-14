import 'package:clippy_flutter/arc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:first_project/pages/MapPage.dart';

const List<String> list = <String>['Small', 'Medium', 'large'];

class ReqDetailsPage extends StatefulWidget {
  String company;
  ReqDetailsPage({this.company = ''});

  @override
  _ReqDetailsPageState createState() => _ReqDetailsPageState();
}

class _ReqDetailsPageState extends State<ReqDetailsPage> {
  String dropdownValue = list.first;
  TextEditingController note = TextEditingController();
  bool plastic = false;
  bool glass = false;
  bool metal = false;

  @override
  Widget build(BuildContext context) {
    String company = widget.company;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        child: Container(
          height: 700,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/reqbg.png"),
              alignment: Alignment.topCenter,
            ),
          ),
          child: ListView(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 60, left: 20, bottom: 30),
                child: const Text("Fill in the details ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black)),
              ),
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
                    value: dropdownValue,
                    onChanged: (String? value) {
                      setState(() {
                        dropdownValue = value!;
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
                value: plastic,
                onChanged: (bool? newValue) {
                  setState(() {
                    plastic = newValue!;
                  });
                },
                controlAffinity:
                    ListTileControlAffinity.leading, //  <-- leading Checkbox
              ),
              CheckboxListTile(
                title: Text("Glass"),
                value: glass,
                onChanged: (bool? newValue) {
                  setState(() {
                    glass = newValue!;
                  });
                },
                controlAffinity:
                    ListTileControlAffinity.leading, //  <-- leading Checkbox
              ),
              CheckboxListTile(
                title: Text("Metal"),
                value: metal,
                onChanged: (bool? newValue) {
                  setState(() {
                    metal = newValue!;
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MapPage(
                          size: dropdownValue,
                          note: note.text,
                          plastic: plastic,
                          glass: glass,
                          metal: metal,
                          company: company,
                        ),
                      ),
                    );

                    // Navigator.pushNamed(context, "mapPage");
                  },
                  child: Text(
                    'Next',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: TextButton(
        style: TextButton.styleFrom(
          primary: Color(0xFF69B289), // foreground
        ),
        onPressed: () {
          Navigator.pushNamed(context, "requestPage");
        },
        child: Text('Change Company'),
      ),
    );
  }
}
