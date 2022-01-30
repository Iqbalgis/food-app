part 'food.dart';

class Food {
  final int id;
  final String picturePath;
  final String name;
  final String description;
  final String ingredients;
  final int price;
  final double rate;

  Food({
    required this.id,
    required this.picturePath,
    required this.name,
    required this.description,
    required this.ingredients,
    required this.price,
    required this.rate,
  });
}

List<Food> mockFoods = [
  Food(
      id: 1,
      picturePath: "https://i.ibb.co/nfMXRLP/image.png",
      name: "Kimbap",
      description: "description",
      ingredients: "ingredients",
      price: 50000,
      rate: 5.0),
  Food(
      id: 2,
      picturePath: "https://i.ibb.co/vZV3xxq/Rectangle-37.png",
      name: "Gatau",
      description: "description",
      ingredients: "ingredients",
      price: 40000,
      rate: 4.0),
];
// https://i.ibb.co/vZV3xxq/Rectangle-37.png 2
// https://i.ibb.co/nfMXRLP/image.png 1