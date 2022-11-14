import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:first_project/pages/company/Products/update_product.dart';
import 'package:flutter/material.dart';

import '../../../model/product.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ProductItemTile extends StatelessWidget {
  final ProductModel product;

  const ProductItemTile({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String _id = product.id;
    String _name = product.name;
    String _code = product.code;
    String _image = product.image;
    String _category = product.category;
    String _subcategory = product.subcategory;
    String _price = product.price;
    String _description = product.description;

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
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: SizedBox(
                  width: 80,
                  height: 80,
                  child: CachedNetworkImage(
                    imageUrl: _image,
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error, size: 25),
                    placeholder: (context, url) =>
                        const CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                    ),
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
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: ListTile(
                          title: Text(
                            _code,
                            style: const TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: ListTile(
                          title: Text(
                            '$_category | $_subcategory',
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: ListTile(
                          title: Text(
                            _description,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            softWrap: false,
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
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
                      Expanded(
                        flex: 2,
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => UpdateProduct(
                                      id: _id,
                                      name: _name,
                                      code: _code,
                                      image: _image,
                                      category: _category,
                                      subcategory: _subcategory,
                                      price: _price,
                                      description: _description,
                                    ),
                                  ),
                                );
                              },
                              icon: const Icon(Icons.edit,
                                  size: 20, color: Colors.black),
                            ),
                            IconButton(
                              onPressed: () {
                                showAlertDialog(context, _id);
                              },
                              icon: const Icon(Icons.delete,
                                  size: 20, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: ListTile(
                          title: Text(
                            '\$$_price',
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

showAlertDialog(BuildContext context, id) {
  // set up the buttons
  Widget cancelButton = TextButton(
    child: Text("Cancel"),
    onPressed: () {
      Navigator.pop(context);
    },
  );
  Widget continueButton = TextButton(
    child: Text("Delete"),
    onPressed: () {
      final doc = FirebaseFirestore.instance.collection('products').doc(id);
      doc.delete();
      Fluttertoast.showToast(
        msg: "Deleted Successful",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
      );
      Navigator.pop(context);
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Confirm Action"),
    content: Text("Are You Sure You Want To Delete Product?"),
    actions: [
      cancelButton,
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
