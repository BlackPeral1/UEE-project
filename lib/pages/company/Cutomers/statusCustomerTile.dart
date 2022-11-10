import 'package:flutter/material.dart';

import '../../../model/cutomer.dart';

class StatusCustomerItemTile extends StatelessWidget {
  final CustomerModel customer;

  const StatusCustomerItemTile({Key? key, required this.customer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String _name = customer.name;
    String _email = customer.email;
    String _address = customer.address;
    String _status = customer.status;

    void _notification(String message) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Center(
            heightFactor: 1,
            widthFactor: double.infinity,
            child: Text(message),
          ),
        ),
      );
    }

    return Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      margin: const EdgeInsets.only(left: 8, right: 8, top: 8),
      elevation: 4,
      child: InkWell(
        child: SizedBox(
          height: 120,
          child: Row(
            children: [

              Expanded(
                flex: 2,
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 2,
                        child: ListTile(
                          title: Text(
                            'Name    :',
                            style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'san-serif',
                                color: Color(0xff4f4e4e)
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: ListTile(
                          title: Text(
                            'Email    :',
                            style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff4f4e4e)
                            ),
                          ),
                        ),
                      ),

                      Expanded(
                        flex: 5,
                        child: ListTile(
                          title: Text(
                            'Address:',
                            style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff4f4e4e)
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),



              Expanded(
                flex: 4,
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 2,
                        child: ListTile(
                          title: Text(
                            _name,
                            style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff2f6a66)
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: ListTile(
                          title: Text(
                            _email,
                            style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff2f6a66)
                            ),
                          ),
                        ),
                      ),

                      Expanded(
                        flex: 5,
                        child: ListTile(
                          title: Text(
                            _address,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            softWrap: false,
                            style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff2f6a66)
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  alignment: Alignment.topRight,
                  child: Column(
                    children: [
                      // Expanded(
                      //   flex: 2,
                      //   child: Row(
                      //     children: [
                      //       IconButton(
                      //         onPressed: () {
                      //
                      //         },
                      //         icon: const Icon(Icons.cancel,
                      //           size: 20, color: Colors.black, ),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      //
                      Expanded(
                        flex: 2,
                        child: ListTile(
                          title: Text(
                            _status,
                            textAlign: TextAlign.right,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        onTap: () {},
      ),
    );
  }
}
