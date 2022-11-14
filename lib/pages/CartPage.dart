import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../widgets/CartAppBar.dart';
import '../widgets/CartBottomNavBar.dart';
// import '../widgets/CartItemSample.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  var total = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Cart"),
        backgroundColor: Color(0xFF69B289),
        centerTitle: true,
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('cart').snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
          cal(streamSnapshot.data!.docs);
          // streamSnapshot.data!.docs.forEach((element) {
          //   print(element['qty']);
          //   total = (element['qty'] * int.parse(element['price'].toString())) +
          //       total;
          //   // double.parse(element['qty']) * double.parse(element['price']);
          // });
          return ListView.builder(
            itemCount: streamSnapshot.data?.docs.length,
            itemBuilder: (ctx, index) => Container(
              height: 110,
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              padding: EdgeInsets.all(10),
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
              child: Row(
                children: [
                  Radio(
                    value: "",
                    groupValue: "",
                    onChanged: (index) {},
                    activeColor: PRIMARY_COLOR,
                  ),
                  Container(
                    height: 70,
                    width: 70,
                    margin: EdgeInsets.only(
                      right: 15,
                    ),
                    child: CachedNetworkImage(
                      imageUrl: streamSnapshot.data?.docs[index]['image'],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(streamSnapshot.data?.docs[index]['name'],
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                        Text("\$${streamSnapshot.data?.docs[index]['price']}",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ))
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.delete,
                            color: Colors.red,
                          ),
                          onPressed: () {
                            FirebaseFirestore.instance
                                .collection('cart')
                                .doc(streamSnapshot.data?.docs[index].id)
                                .delete();
                          },
                        ),
                        Row(
                          children: [
                            InkWell(
                              child: Container(
                                padding: EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                    color: PRIMARY_COLOR,
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 1,
                                        blurRadius: 10,
                                      ),
                                    ]),
                                child: Icon(
                                  CupertinoIcons.plus,
                                  color: Colors.white,
                                  size: 18,
                                ),
                              ),
                              onTap: () {
                                FirebaseFirestore.instance
                                    .collection('cart')
                                    .doc(streamSnapshot.data?.docs[index].id)
                                    .update({
                                  'qty': streamSnapshot.data?.docs[index]
                                          ['qty'] +
                                      1
                                });
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            super.widget));
                              },
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                "${streamSnapshot.data?.docs[index]['qty']}",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            InkWell(
                              child: Container(
                                padding: EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                    color: PRIMARY_COLOR,
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 1,
                                        blurRadius: 10,
                                      ),
                                    ]),
                                child: Icon(
                                  CupertinoIcons.minus,
                                  color: Colors.white,
                                  size: 18,
                                ),
                              ),
                              onTap: () {
                                FirebaseFirestore.instance
                                    .collection('cart')
                                    .doc(streamSnapshot.data?.docs[index].id)
                                    .update({
                                  'qty': streamSnapshot.data?.docs[index]
                                          ['qty'] -
                                      1
                                });
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            super.widget));
                              },
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        height: 130,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text("\$" + total.toString(),
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black))
              ],
            ),
            Container(
              alignment: Alignment.center,
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: PRIMARY_COLOR,
                  borderRadius: BorderRadius.circular(20)),
              child: Text(
                "Check out",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<void> cal(x) async {
    x.forEach((element) {
      print(element['qty']);
      total = (element['qty'] * int.parse(element['price'].toString())) + total;
      // double.parse(element['qty']) * double.parse(element['price']);
    });
  }
}
