import 'package:first_project/pages/company/Products/ProductItemTile.dart';
import 'package:flutter/material.dart';

import '../../../model/product.dart';

class AllProducts extends StatefulWidget {
  const AllProducts({Key? key}) : super(key: key);

  @override
  State<AllProducts> createState() => _AllProductsState();
}

class _AllProductsState extends State<AllProducts> {
  List<ProductModel> product_list = [
    ProductModel(
        name: 'Soft Drink Plastic Bottle',
        code: '#B001',
        image: 'https://static-01.daraz.lk/p/3bf0e89c0221079346d08b7534258a48.jpg',
        category: 'Plastic',
        subcategory: 'Bottles',
        price: '100.00',
        description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.'),
    ProductModel(
        name: 'Liquid Soap Bottle',
        code: '#B001',
        image: 'https://static-01.daraz.lk/p/4eff885c75a9548308f40f608d26adba.jpg',
        category: 'Plastic',
        subcategory: 'Bottles',
        price: '100.00',
        description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.'),
    ProductModel(
        name: 'Conditioner Bottle',
        code: '#B001',
        image: 'https://static-01.daraz.lk/p/9ad68973cd5480fef76853059de32eb1.jpg',
        category: 'Plastic',
        subcategory: 'Bottles',
        price: '100.00',
        description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.'),
  ];

  String getName(int index) {
    return product_list[index].name;
  }

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
          itemCount: product_list.length,
          itemBuilder: _itemBuilder,
        ),
      ),
    );
  }

  Widget _itemBuilder(BuildContext context, int index) {
    return ProductItemTile(
      product: ProductModel(
        name: product_list[index].name,
        code: product_list[index].code,
        image: product_list[index].image,
        category: product_list[index].category,
        subcategory: product_list[index].subcategory,
        price: product_list[index].price,
        description: product_list[index].description,
      ),
    );
  }
}
