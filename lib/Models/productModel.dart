class ProductModel {
  final dynamic id;
  final dynamic price;
  final String title;
  final String image;
  final String category;
  final String description;
  final RatingModel ratingModel;

  ProductModel(
      {required this.id,
      required this.title,
      required this.price,
      required this.image,
      required this.category,
      required this.ratingModel,
      required this.description});

  factory ProductModel.fromJson(jsonData) {
    return ProductModel(
      id: jsonData['id'],
      title: jsonData['title'],
      price: jsonData['price'],
      image: jsonData['image'],
      category: jsonData['category'],
      description: jsonData['description'],
      ratingModel: RatingModel.fromJson(
        jsonData['rating'],
      ),
    );
  }
}

class RatingModel {
  final int count;
  // final double rate;

  RatingModel({
    required this.count,
    //  required this.rate
  });

  factory RatingModel.fromJson(jsonData) {
    return RatingModel(
      count: jsonData['count'],
      // rate: jsonData['rate'],
    );
  }
}
