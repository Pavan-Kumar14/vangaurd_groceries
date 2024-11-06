class AllProductsModel {
  final String productId;
  final String category;
  final String description;
  final String image;
  final String name;
  final double overAllRating;
  final double price;
  final int reviewCount;


  AllProductsModel({
    required this.productId,
    required this.category,
    required this.description,
    required this.image,
    required this.name,
    required this.overAllRating,
    required this.price,
    required this.reviewCount,
  });

  factory AllProductsModel.fromMap(Map<String, dynamic> data) {
    return AllProductsModel(
        productId: data['productId'],
        category: data['category'],
        description: data['description'],
        image: data['image'],
        name: data['name'],
        overAllRating: data['overAllRating'],
        price: data['price'],
        reviewCount: data['reviewCount'],
    );
  }

}