import 'package:flutter/material.dart';

class UpdateProduct extends StatefulWidget {
  const UpdateProduct({Key? key}) : super(key: key);

  @override
  State<UpdateProduct> createState() => _UpdateProductState();
}

class _UpdateProductState extends State<UpdateProduct> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      // bottomNavigationBar: const ItemBottomNavBar(),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  child: Column(
                    children: const [
                      Text(
                        "Update Product Details",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),

                TextField(),
                TextFormField(
                  decoration: const InputDecoration(
                    fillColor: Colors.deepPurpleAccent,
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green)),
                    helperText: '',
                    labelText: "Name",
                    focusColor: Colors.lightGreenAccent,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                    ),
                  ),
                  minLines: 1,
                  maxLines: 10,
                ),
                Text("Product Name"),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green)),
                    helperText: '',
                    labelText: "Product Code",
                    focusColor: Colors.lightGreenAccent,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                    ),
                  ),
                  minLines: 1,
                  maxLines: 10,
                ),
                Text("Product Name"),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green)),
                    helperText: '',
                    labelText: "Product Image",
                    focusColor: Colors.lightGreenAccent,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                    ),
                  ),
                  minLines: 1,
                  maxLines: 10,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green)),
                    helperText: '',
                    labelText: "Product Category",
                    focusColor: Colors.lightGreenAccent,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                    ),
                  ),
                  minLines: 1,
                  maxLines: 10,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green)),
                    helperText: '',
                    labelText: "Sub Product Category",
                    focusColor: Colors.lightGreenAccent,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                    ),
                  ),
                  minLines: 1,
                  maxLines: 10,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green)),
                    helperText: '',
                    labelText: "Product Price",
                    focusColor: Colors.lightGreenAccent,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                    ),
                  ),
                  minLines: 1,
                  maxLines: 10,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green)),
                    helperText: '',
                    labelText: "Product Description",
                    focusColor: Colors.lightGreenAccent,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                    ),
                  ),
                  minLines: 1,
                  maxLines: 10,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green),
                    ),
                    child: const Text(
                      "UPDATE PRODUCT",
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
