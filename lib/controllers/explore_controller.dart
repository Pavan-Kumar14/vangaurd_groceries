import 'package:get/get.dart';
import 'package:vangaurd_groceries/data/models/all_products.dart';
import 'package:vangaurd_groceries/data/repositories/explore_repository.dart';

class ExploreController extends GetxController {
  final ExploreRepository exploreRepository;

  ExploreController({required this.exploreRepository});

  var fetchedProducts = <AllProductsModel>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchProducts();
  }

  Future<void> fetchProducts() async {
    final products = await exploreRepository.fetchAllProducts();
    fetchedProducts.assignAll(products);
  }

}