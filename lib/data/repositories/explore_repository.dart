import 'package:vangaurd_groceries/data/interfaces/explore_interface.dart';
import 'package:vangaurd_groceries/data/models/all_products.dart';

class ExploreRepository {

  final ExploreInterface exploreInterface;

  ExploreRepository({required this.exploreInterface});

  Future<List<AllProductsModel>> fetchAllProducts() async {
    return await exploreInterface.fetchAllProducts();
  }

}