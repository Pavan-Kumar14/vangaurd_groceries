import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:vangaurd_groceries/data/interfaces/explore_interface.dart';

import '../models/all_products.dart';

class ExploreServices implements ExploreInterface {

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  Future<List<AllProductsModel>> fetchAllProducts() async {
    QuerySnapshot snapshot = await _firestore.collection('products').get();

    List<AllProductsModel> products = snapshot.docs.map((doc) {
      final data = doc.data() as Map<String, dynamic>;
      return AllProductsModel.fromMap(data);
    }).toList();

    return products;

  }

}