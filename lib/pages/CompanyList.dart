import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/CategoriesWidget.dart';
import '../widgets/ItemsWidget.dart';

class CompanyList extends StatelessWidget {
  @override

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ListView(children: [
        Container(
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
                        color: Color.fromARGB(255, 97, 97, 97),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 0, left: 20, bottom: 30),
                child: const Text("Company List",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black)),
              ),
              Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  padding:
                      EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 5),
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
                  child: Row(children: [
                    Image.asset(
                      "images/company1.png",
                      height: 100,
                      width: 100,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            child: const Text(
                              "Casella Waste Systems",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Tell : 0112365896",
                              style: TextStyle(fontSize: 15),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          TextButton(
                            style: TextButton.styleFrom(
                              primary: Color.fromARGB(255, 255, 255, 255),
                              backgroundColor: Color(0xFF69B289),
                              shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(18)),
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15.0), // foreground
                            ),
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, "contractReqDetailsPage");
                            },
                            child: Text('Arrange request'),
                          )
                        ],
                      ),
                    ),
                  ])),
              Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  padding:
                      EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 5),
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
                  child: Row(children: [
                    Image.asset(
                      "images/company2.png",
                      height: 100,
                      width: 100,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            child: const Text(
                              "Good Trash Systems",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Tell : 0112366824",
                              style: TextStyle(fontSize: 15),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          TextButton(
                            style: TextButton.styleFrom(
                              primary: Color.fromARGB(255, 255, 255, 255),
                              backgroundColor: Color(0xFF69B289),
                              shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(18)),
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15.0), // foreground
                            ),
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, "contractReqDetailsPage");
                            },
                            child: Text('Arrange request'),
                          )
                        ],
                      ),
                    ),
                  ])),
            ],
          ),
        ),
      ]),
    );
  }
}
