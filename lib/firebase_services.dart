import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/src/services/text_input.dart';

class FirebaseServices {
  final FirebaseFirestore db=FirebaseFirestore.instance;
  
  Future<void> addItem({required String model, required String name, required String price})async {
    var product = <String, String>{
    "name": name,
    "model": model,
    "price": price
  };
    await db
        .collection("seller")
        .doc(name)
        .set(product)
        .onError((e, _) => print("Error writing document: $e"));
  }
}
