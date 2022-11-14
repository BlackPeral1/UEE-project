import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class UpdateProduct extends StatefulWidget {
  String id;
  String name;
  String code;
  String image;
  String category;
  String subcategory;
  String price;
  String description;

  UpdateProduct(
      {this.id = '',
      this.name = '',
      this.code = '',
      this.image = '',
      this.category = '',
      this.subcategory = '',
      this.price = '',
      this.description = ''});

  @override
  State<UpdateProduct> createState() => _UpdateProductState();
}

class _UpdateProductState extends State<UpdateProduct> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController name = TextEditingController();
  TextEditingController code = TextEditingController();
  TextEditingController image = TextEditingController();
  TextEditingController category = TextEditingController();
  TextEditingController subcategory = TextEditingController();
  TextEditingController price = TextEditingController();
  TextEditingController description = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState

    name.text = widget.name;
    code.text = widget.code;
    image.text = widget.image;
    category.text = widget.category;
    subcategory.text = widget.subcategory;
    price.text = widget.price;
    description.text = widget.description;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("REDVIUS"),
        backgroundColor: Color(0xFF69B289),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              Navigator.pushNamed(context, "/");
            },
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
                        "Add Product Details",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: name,
                  decoration: const InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 41, 41, 41)),
                    ),
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
                TextFormField(
                  controller: code,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green)),
                    helperText: '',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 41, 41, 41)),
                    ),
                    labelText: "Product Code",
                    focusColor: Colors.lightGreenAccent,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                    ),
                  ),
                  minLines: 1,
                  maxLines: 10,
                ),
                TextFormField(
                  controller: image,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green)),
                    helperText: '',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 41, 41, 41)),
                    ),
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
                  controller: category,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green)),
                    helperText: '',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 41, 41, 41)),
                    ),
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
                  controller: subcategory,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green)),
                    helperText: '',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 41, 41, 41)),
                    ),
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
                  controller: price,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green)),
                    helperText: '',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 41, 41, 41)),
                    ),
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
                  controller: description,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green)),
                    helperText: '',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 41, 41, 41)),
                    ),
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
                    onPressed: () {
                      updateProduct();
                      Fluttertoast.showToast(
                        msg: "Updated Successful",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                      );
                      Navigator.pushNamed(context, "productlist");
                    },
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

  Future<void> updateProduct() async {
    final doc =
        FirebaseFirestore.instance.collection('products').doc(widget.id);
    final json = {
      'name': name.text,
      'code': code.text,
      'image': image.text,
      'category': category.text,
      'subcategory': subcategory.text,
      'price': price.text,
      'description': description.text,
    };

    await doc.update(json);
  }
}
