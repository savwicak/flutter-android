class FoodModel {
  String name;
  String price;
  String description;
  final List<Map<String, String>> review;
  String rating;
  String imageUrl;

  FoodModel({
    required this.name, 
    required this.price,
    required this.description,
    required this.rating,
    required this.review,
    required this.imageUrl
    });
}