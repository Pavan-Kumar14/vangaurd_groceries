import 'package:flutter/material.dart';
import 'package:vangaurd_groceries/data/models/all_products.dart';

class ExploreCard extends StatelessWidget {
  final AllProductsModel product;

  const ExploreCard({required this.product, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: Colors.grey[300],
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                width: 50,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(product.image, fit: BoxFit.cover,),
                ),
              ),
            ),
            Column(
              children: [
                Text(product.name, style: TextStyle(fontSize: 16, color: Colors.black),),
                Text(product.category, style: TextStyle(fontSize: 12, color: Colors.grey),),
                Text(product.overAllRating.toString(), style: TextStyle(fontSize: 14, color: Colors.black),),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.grey[700],
              ),
              child: Text(product.price.toString(), style: TextStyle(fontSize: 16, color: Colors.white),),
            ),
          ],
        ),
      ),
    );
  }
}
