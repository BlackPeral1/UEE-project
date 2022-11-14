import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../pages/ItemPage.dart';

class ItemsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      //disalbes the scroll functionality of gridview
      //then it will scroll  in list view of home page
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 1,
      shrinkWrap: true,
      children: [
        StreamBuilder(
            stream:
                FirebaseFirestore.instance.collection('products').snapshots(),
            builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
              return ListView.builder(
                itemCount: streamSnapshot.data?.docs.length,
                itemBuilder: (ctx, index) => Card(
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
                                imageUrl: streamSnapshot.data?.docs[index]
                                    ['image'],
                                width: 80,
                                height: 80,
                                fit: BoxFit.cover,
                                errorWidget: (context, url, error) =>
                                    const Icon(Icons.error, size: 25),
                                placeholder: (context, url) =>
                                    const CircularProgressIndicator(
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                      Colors.green),
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
                                        streamSnapshot.data?.docs[index]
                                            ['name'],
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
                                        streamSnapshot.data?.docs[index]
                                            ['code'],
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
                                        streamSnapshot.data?.docs[index]
                                                ['category'] +
                                            " | " +
                                            streamSnapshot.data?.docs[index]
                                                ['subcategory'],
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
                                        streamSnapshot.data?.docs[index]
                                            ['description'],
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
                                      children: [],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: ListTile(
                                      title: Text(
                                        '\$' +
                                            streamSnapshot.data?.docs[index]
                                                ['price'],
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
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ItemPage(
                            item: streamSnapshot.data?.docs[index],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              );
            }),
      ],
    );
  }
}
