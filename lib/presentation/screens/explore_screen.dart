import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vangaurd_groceries/constants/colors.dart';
import 'package:vangaurd_groceries/controllers/explore_controller.dart';
import 'package:vangaurd_groceries/data/interfaces/explore_interface.dart';
import 'package:vangaurd_groceries/data/repositories/explore_repository.dart';
import 'package:vangaurd_groceries/data/services/explore_services.dart';
import 'package:vangaurd_groceries/presentation/widgets/explore_card.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {

  final ExploreController exploreController = Get.find<ExploreController>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Obx(() =>
          ListView.builder(
            itemCount: exploreController.fetchedProducts.length,
              itemBuilder: (context, index) {
              final product = exploreController.fetchedProducts[index];
              return ExploreCard(product: product);
            }
          ),
        ),
      ),
    );
  }
}
