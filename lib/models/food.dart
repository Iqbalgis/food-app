part of 'models.dart';

class Food extends Equatable {
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

  @override
  // TODO: implement props
  List<Object?> get props =>
      [id, picturePath, name, description, ingredients, price, rate];
}

List<Food> mockFoods = [
  Food(
      id: 1,
      picturePath: "https://i.ibb.co/nfMXRLP/image.png",
      name: "Kimbap",
      description:
          "Kimbab merupakan makanan khas Korea yang terbuat dari gulungan nasi dan isian seperti sayur dan daging. Kimbab atau kimbap berasal dari kata gim dan bap. Gim artinya rumput laut dan bap artinya beras atau nasi.",
      ingredients: "ingredients",
      price: 50000,
      rate: 5.0),
  Food(
      id: 2,
      picturePath: "https://i.ibb.co/vZV3xxq/Rectangle-37.png",
      name: "Tokbokki",
      description: "description",
      ingredients: "ingredients",
      price: 40000,
      rate: 4.0),
  Food(
      id: 3,
      picturePath: "https://i.ibb.co/KwSbRmm/Rectangle-37-1.png",
      name: "Kimchi",
      description: "description",
      ingredients: "ingredients",
      price: 55000,
      rate: 4.2),
  Food(
      id: 4,
      picturePath: "https://i.ibb.co/BZK9ZzB/Rectangle-37-2.png",
      name: "Instant Noodle",
      description: "description",
      ingredients: "ingredients",
      price: 45000,
      rate: 5.0),
];
// https://i.ibb.co/vZV3xxq/Rectangle-37.png 2
// https://i.ibb.co/nfMXRLP/image.png 1
// https://i.ibb.co/KwSbRmm/Rectangle-37-1.png
