import 'package:flutter/material.dart';

import '../../../model/cutomer.dart';
import 'statusCustomerTile.dart';

class ApprovedCustomers extends StatefulWidget {
  const ApprovedCustomers({Key? key}) : super(key: key);

  @override
  State<ApprovedCustomers> createState() => _ApprovedCustomersState();
}

class _ApprovedCustomersState extends State<ApprovedCustomers> {
  List<CustomerModel> customer_list = [
    CustomerModel(
        name: 'Chamath Jayasekara',
        email: 'chmathjaya@gmail.com',
        address: '200,Perera Road,Malabe',
        status: 'Approved'
    ),
    CustomerModel(
        name: 'Chamath Jayasekara',
        email: 'chmathjaya@gmail.com',
        address: '200,Perera Road,Malabe',
        status: 'Approved'
    ),
    CustomerModel(
        name: 'Chamath Jayasekara',
        email: 'chmath@gmail.com',
        address: '200,Perera Road,Malabe',
        status: 'Approved'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("REDVIUS"),
          centerTitle: true,
          actions: [
            IconButton(
              icon: const Icon(Icons.person),
              onPressed: () {},
            ),
          ],
        ),
        body:

        ListView.builder(
          itemCount: customer_list.length,
          itemBuilder: _itemBuilder,
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
          status: customer_list[index].status
      ),
    );
  }

}


