import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/CategoriesWidget.dart';
import '../widgets/ItemsWidget.dart';

class RequestPage extends StatefulWidget {
  @override
  RequestPageState createState() => RequestPageState();
}

class RequestPageState extends State<RequestPage> {
  var currentIndex = 2;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
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
                margin: const EdgeInsets.only(top: 60, left: 20, bottom: 30),
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
                              Navigator.pushNamed(context, "reqDetailsPage");
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
                              Navigator.pushNamed(context, "reqDetailsPage");
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
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(displayWidth * .05),
        height: displayWidth * .155,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 30,
              offset: const Offset(0, 10),
            ),
          ],
          borderRadius: BorderRadius.circular(20),
        ),
        child: ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: displayWidth * .02),
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              setState(() {
                currentIndex = index;
                if (currentIndex == 0) {
                  Navigator.pushNamed(context, "/");
                } else if (currentIndex == 1) {
                  Navigator.pushNamed(context, "productPage");
                } else if (currentIndex == 2) {
                  Navigator.pushNamed(context, "requestPage");
                } else if (currentIndex == 3) {
                  Navigator.pushNamed(context, "cartPage");
                }

                // HapticFeedback.lightImpact();
              });
            },
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Stack(
              children: [
                AnimatedContainer(
                  duration: Duration(seconds: 1),
                  curve: Curves.fastLinearToSlowEaseIn,
                  width: index == currentIndex
                      ? displayWidth * .32
                      : displayWidth * .18,
                  alignment: Alignment.center,
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    curve: Curves.fastLinearToSlowEaseIn,
                    height: index == currentIndex ? displayWidth * .12 : 0,
                    width: index == currentIndex ? displayWidth * .32 : 0,
                    decoration: BoxDecoration(
                      color: index == currentIndex
                          ? Colors.greenAccent.withOpacity(.2)
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                AnimatedContainer(
                  duration: Duration(seconds: 1),
                  curve: Curves.fastLinearToSlowEaseIn,
                  width: index == currentIndex
                      ? displayWidth * .31
                      : displayWidth * .18,
                  alignment: Alignment.center,
                  child: Stack(
                    children: [
                      Row(
                        children: [
                          AnimatedContainer(
                            duration: Duration(seconds: 1),
                            curve: Curves.fastLinearToSlowEaseIn,
                            width:
                                index == currentIndex ? displayWidth * .13 : 0,
                          ),
                          AnimatedOpacity(
                            opacity: index == currentIndex ? 1 : 0,
                            duration: Duration(seconds: 1),
                            curve: Curves.fastLinearToSlowEaseIn,
                            child: Text(
                              index == currentIndex
                                  ? '${listOfStrings[index]}'
                                  : '',
                              style: TextStyle(
                                color: Color.fromARGB(255, 54, 121, 103),
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          AnimatedContainer(
                            duration: Duration(seconds: 1),
                            curve: Curves.fastLinearToSlowEaseIn,
                            width:
                                index == currentIndex ? displayWidth * .03 : 20,
                          ),
                          Icon(
                            listOfIcons[index],
                            size: displayWidth * .076,
                            color: index == currentIndex
                                ? Color.fromARGB(255, 54, 121, 103)
                                : Color.fromARGB(255, 54, 121, 103),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<IconData> listOfIcons = [
    Icons.home_rounded,
    Icons.lightbulb,
    FontAwesomeIcons.locationArrow,
    Icons.format_align_right,
  ];

  List<String> listOfStrings = [
    'Home',
    'Product',
    'Request',
    'Account',
  ];
}
