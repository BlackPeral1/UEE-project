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
        image:
            'https://static-01.daraz.lk/p/3bf0e89c0221079346d08b7534258a48.jpg',
        category: 'Plastic',
        subcategory: 'Bottles',
        price: '100.00',
        description:
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.'),
    ProductModel(
        name: 'Liquid Soap Bottle',
        code: '#B001',
        image:
            'https://static-01.daraz.lk/p/4eff885c75a9548308f40f608d26adba.jpg',
        category: 'Plastic',
        subcategory: 'Bottles',
        price: '100.00',
        description:
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.'),
    ProductModel(
        name: 'Conditioner Bottle',
        code: '#B001',
        image:
            'https://static-01.daraz.lk/p/9ad68973cd5480fef76853059de32eb1.jpg',
        category: 'Plastic',
        subcategory: 'Bottles',
        price: '100.00',
        description:
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.'),
  ];

  String getName(int index) {
    return product_list[index].name;
  }

  var currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("REDVIUS"),
          backgroundColor: Color(0xFF69B289),
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
