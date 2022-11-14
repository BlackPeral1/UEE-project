import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class Request {
  late String size;
  late String note;
  List<String> types = [];
  late String category;
  late String subcategory;
  late String price;
  late String description;
}
