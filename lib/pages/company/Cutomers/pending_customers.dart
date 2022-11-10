import 'package:flutter/material.dart';

import '../../../model/cutomer.dart';
import 'customerItemTile.dart';

class PendingCustomers extends StatefulWidget {
  const PendingCustomers({Key? key}) : super(key: key);

  @override
  State<PendingCustomers> createState() => _PendingCustomersState();
}

class _PendingCustomersState extends State<PendingCustomers> {
  List<CustomerModel> customer_list = [
    CustomerModel(
      name: 'Chamath Jayasekara',
      email: 'chmathjaya@gmail.com',
      address: '200,Perera Road,Malabe',
      status: 'pending'
    ),
    CustomerModel(
        name: 'Chamath Jayasekara',
        email: 'chmathjaya@gmail.com',
        address: '200,Perera Road,Malabe',
        status: 'pending'
    ),
    CustomerModel(
        name: 'Chamath Jayasekara',
        email: 'chmath@gmail.com',
        address: '200,Perera Road,Malabe',
        status: 'pending'
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
        body: ListView.builder(
          itemCount: customer_list.length,
          itemBuilder: _itemBuilder,
        ),
      ),
    );
  }

  Widget _itemBuilder(BuildContext context, int index) {
    return CustomerItemTile(
      customer: CustomerModel(
        name: customer_list[index].name,
        email: customer_list[index].email,
        address: customer_list[index].address,
        status: customer_list[index].status
      ),
    );
  }

}


