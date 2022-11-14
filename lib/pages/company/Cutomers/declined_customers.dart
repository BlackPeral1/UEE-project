import 'package:flutter/material.dart';

import '../../../model/cutomer.dart';
import 'statusCustomerTile.dart';

class DeclinedCustomers extends StatefulWidget {
  const DeclinedCustomers({Key? key}) : super(key: key);

  @override
  State<DeclinedCustomers> createState() => _DeclinedCustomersState();
}

class _DeclinedCustomersState extends State<DeclinedCustomers> {
  List<CustomerModel> customer_list = [
    CustomerModel(
        name: 'Chamath Jayasekara',
        email: 'chmathjaya@gmail.com',
        address: '200,Perera Road,Malabe',
        coin: '0',
        status: 'Declined'),
    CustomerModel(
        name: 'Chamath Jayasekara',
        email: 'chmathjaya@gmail.com',
        address: '200,Perera Road,Malabe',
        coin: '0',
        status: 'Declined'),
    CustomerModel(
        name: 'Chamath Jayasekara',
        email: 'chmath@gmail.com',
        address: '200,Perera Road,Malabe',
        coin: '0',
        status: 'Declined'),
  ];

  var currentIndex = 2;
  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: 700,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/custbg.png"),
              alignment: Alignment.topCenter,
            ),
          ),
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 60, bottom: 10),
                child: Text(
                  'Customers',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    style: TextButton.styleFrom(
                      primary: Color.fromARGB(255, 255, 255, 255),

                      backgroundColor: Color.fromARGB(255, 159, 185, 170),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(18)),
                      ),
                      padding: EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 12), // background
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, "pending_customers");
                    },
                    child: Text(
                      'Pending',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  TextButton(
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
                      Navigator.pushNamed(context, "declined_customers");
                    },
                    child: Text(
                      'Declined',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: customer_list.length,
                itemBuilder: _itemBuilder,
              ),
            ],
          ),
        ),
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
                    Navigator.pushNamed(context, "addProduct");
                  } else if (currentIndex == 1) {
                    Navigator.pushNamed(context, "productlist");
                  } else if (currentIndex == 2) {
                    Navigator.pushNamed(context, "pending_customers");
                  } else if (currentIndex == 3) {
                    Navigator.pushNamed(context, "generateReport");
                  }

                  // HapticFeedback.lightImpact();
                });
              },
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              child: Stack(
                children: [
                  AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    curve: Curves.fastLinearToSlowEaseIn,
                    width: index == currentIndex
                        ? displayWidth * .32
                        : displayWidth * .18,
                    alignment: Alignment.center,
                    child: AnimatedContainer(
                      duration: const Duration(seconds: 1),
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
                              width: index == currentIndex
                                  ? displayWidth * .13
                                  : 0,
                            ),
                            AnimatedOpacity(
                              opacity: index == currentIndex ? 1 : 0,
                              duration: Duration(seconds: 1),
                              curve: Curves.fastLinearToSlowEaseIn,
                              child: Text(
                                index == currentIndex
                                    ? '${listOfStrings[index]}'
                                    : '',
                                style: const TextStyle(
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
                              duration: const Duration(seconds: 1),
                              curve: Curves.fastLinearToSlowEaseIn,
                              width: index == currentIndex
                                  ? displayWidth * .03
                                  : 20,
                            ),
                            Icon(
                              listOfIcons[index],
                              size: displayWidth * .076,
                              color: index == currentIndex
                                  ? const Color.fromARGB(255, 54, 121, 103)
                                  : const Color.fromARGB(255, 54, 121, 103),
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
      ),
    );
  }

  Widget _itemBuilder(BuildContext context, int index) {
    return StatusCustomerItemTile(
      customer: CustomerModel(
          name: customer_list[index].name,
          email: customer_list[index].email,
          address: customer_list[index].address,
          coin: customer_list[index].coin,
          status: customer_list[index].status),
    );
  }

  List<IconData> listOfIcons = [
    Icons.add,
    Icons.list,
    Icons.person,
    Icons.assessment,
  ];

  List<String> listOfStrings = [
    'New',
    'Products',
    'Customers',
    'Report',
  ];
}
