import 'package:first_project/widgets/ItemWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../widgets/ItemAppBar.dart';

class ItemComparePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(children: [
          ItemAppBar(),
          Container(
            padding: const EdgeInsets.all(20),
            child: Container(
                height: 500,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            //itemComparePage
                            Navigator.pushNamed(context, "productPage");
                          },
                          child: Text(
                            "Change",
                            style: TextStyle(
                              fontSize: 17,
                              color: PRIMARY_COLOR,
                            ),
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.all(16),
                            child: Image.asset(
                              "images/1.png",
                              height: 50,
                            )),
                        Padding(
                          padding: EdgeInsets.only(top: 5, bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "\$120",
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.symmetric(vertical: 12),
                            child: Text(
                              "Arduino UNO REV3 [A000066]",
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )),
                        Padding(
                            padding: EdgeInsets.symmetric(vertical: 0),
                            child: Text(
                              "Thi is moredetailed ",
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.black,
                              ),
                            )),
                        Padding(
                            padding: EdgeInsets.symmetric(vertical: 0),
                            child: Text(
                              "Thi is moredetailed ",
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.black,
                              ),
                            )),
                        Padding(
                            padding: EdgeInsets.symmetric(vertical: 0),
                            child: Text(
                              "Thi is moredetailed ",
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.black,
                              ),
                            )),
                        Container(
                          margin: EdgeInsets.only(top: 40),
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: PRIMARY_COLOR,
                                    borderRadius: BorderRadius.circular(5),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 3,
                                        blurRadius: 10,
                                        offset: Offset(0, 3),
                                      ),
                                    ]),
                                child: Icon(
                                  CupertinoIcons.plus,
                                  size: 18,
                                  color: Colors.white,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  "1",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: PRIMARY_COLOR,
                                    borderRadius: BorderRadius.circular(5),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 3,
                                        blurRadius: 10,
                                        offset: Offset(0, 3),
                                      ),
                                    ]),
                                child: Icon(
                                  CupertinoIcons.minus,
                                  size: 18,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.symmetric(vertical: 15),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    children: [
                                      ElevatedButton(
                                    
                                        onPressed: () {
                                          Navigator.pushNamed(
                                              context, "cartPage");
                                        },
                                        child: Text(
                                          "Add To Cart",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    PRIMARY_COLOR),
                                            padding: MaterialStateProperty.all(
                                              EdgeInsets.symmetric(
                                                  vertical: 13, horizontal: 15),
                                            ),
                                            shape: MaterialStateProperty.all<
                                                    RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30)))),
                                      )
                                    ],
                                  )
                                ])),
                      ],
                    ),
                    VerticalDivider(
                      color: Colors.black,
                      thickness: 1,
                      indent: 20,
                      endIndent: 0,
                      width: 20,
                    ),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            //itemComparePage
                            Navigator.pushNamed(context, "productPage");
                          },
                          child: Text(
                            "Change",
                            style: TextStyle(
                              fontSize: 17,
                              color: PRIMARY_COLOR,
                            ),
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.all(16),
                            child: Image.asset(
                              "images/1.png",
                              height: 50,
                            )),
                        Padding(
                          padding: EdgeInsets.only(top: 5, bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "\$120",
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              Row(
                                children: [],
                              )
                            ],
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.symmetric(vertical: 12),
                            child: Text(
                              "Arduino UNO REV3 [A000066]",
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )),
                        Padding(
                            padding: EdgeInsets.symmetric(vertical: 0),
                            child: Text(
                              "Thi is moredetailed ",
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.black,
                              ),
                            )),
                        Padding(
                            padding: EdgeInsets.symmetric(vertical: 0),
                            child: Text(
                              "Thi is moredetailed ",
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.black,
                              ),
                            )),
                        Padding(
                            padding: EdgeInsets.symmetric(vertical: 0),
                            child: Text(
                              "Thi is moredetailed ",
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.black,
                              ),
                            )),
                        Container(
                          margin: EdgeInsets.only(top: 40),
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: PRIMARY_COLOR,
                                    borderRadius: BorderRadius.circular(5),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 3,
                                        blurRadius: 10,
                                        offset: Offset(0, 3),
                                      ),
                                    ]),
                                child: Icon(
                                  CupertinoIcons.plus,
                                  size: 18,
                                  color: Colors.white,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  "1",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: PRIMARY_COLOR,
                                    borderRadius: BorderRadius.circular(5),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 3,
                                        blurRadius: 10,
                                        offset: Offset(0, 3),
                                      ),
                                    ]),
                                child: Icon(
                                  CupertinoIcons.minus,
                                  size: 18,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.symmetric(vertical: 15),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {
                                          Navigator.pushNamed(
                                              context, "cartPage");
                                        },
                                        child: Text(
                                          "Add To Cart",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    PRIMARY_COLOR),
                                            padding: MaterialStateProperty.all(
                                              EdgeInsets.symmetric(
                                                  vertical: 13, horizontal: 15),
                                            ),
                                            shape: MaterialStateProperty.all<
                                                    RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30)))),
                                      )
                                    ],
                                  )
                                ])),
                      ],
                    ),
                    Column(
                      children: [],
                    ),
                  ],
                )),
          )
        ]));
  }
}
