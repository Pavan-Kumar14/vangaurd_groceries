import 'package:get/get.dart';
import 'package:vangaurd_groceries/controllers/explore_controller.dart';
import 'package:vangaurd_groceries/data/interfaces/explore_interface.dart';
import 'package:vangaurd_groceries/data/repositories/explore_repository.dart';
import 'package:vangaurd_groceries/data/services/explore_services.dart';


class ProductBinding extends Bindings {
  @override
  void dependencies() {

    Get.lazyPut<ExploreInterface>(() => ExploreServices());

    Get.lazyPut<ExploreRepository>(() => ExploreRepository(exploreInterface: Get.find()));

    Get.lazyPut<ExploreController>(() => ExploreController(exploreRepository: Get.find()));

  }
}