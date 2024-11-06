import 'package:vangaurd_groceries/data/models/all_products.dart';

abstract class ExploreInterface {
  Future<List<AllProductsModel>> fetchAllProducts();
}