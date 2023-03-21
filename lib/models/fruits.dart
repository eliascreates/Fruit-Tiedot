import 'package:fruit_tiedot/constants.dart';

class Fruit {
  Fruit({
    required this.name,
    required this.description,
    required this.imageSrc,
    required this.detailImageSrc,
    required this.calories,
    this.isFavorite = false,
  });

  final String name, imageSrc, detailImageSrc, description;
  final int calories;
  bool isFavorite;

  void toggleFavorite() {
    isFavorite = !isFavorite;
  }
}

List fruits = [
  Fruit(
    name: "Orange",
    description: "Orange is a fruit",
    imageSrc: "assets/images/orangeIcon.jpeg",
    detailImageSrc: "assets/images/orangePhoto.jpeg",
    calories: 45,
    isFavorite: true,
  ),
  Fruit(
    name: "Apple",
    description: "Apple is a fruit",
    imageSrc: "assets/images/appleIcon.jpeg",
    detailImageSrc: "assets/images/applePhoto.png",
    calories: 45,
    isFavorite: false,
  ),
  Fruit(
    name: "Lime",
    description: "Lime is a fruit",
    imageSrc: "assets/images/limeIcon.jpeg",
    detailImageSrc: "assets/images/limePhoto.jpeg",
    calories: 45,
    isFavorite: false,
  ),
  Fruit(
    name: "Strawberry",
    description: "Strawberry is a fruit",
    imageSrc: "assets/images/strawberryIcon.jpeg",
    detailImageSrc: "assets/images/strawberryPhoto.png",
    calories: 45,
    isFavorite: true,
  ),
  Fruit(
    name: "Banana",
    description: "Banana is a fruit",
    imageSrc: "assets/images/bananaIcon.jpeg",
    detailImageSrc: "assets/images/bananaPhoto.jpeg",
    calories: 45,
    isFavorite: true,
  ),
  Fruit(
    name: "Raspberry",
    description: "Raspberry is a fruit",
    imageSrc: "assets/images/raspberryIcon.jpeg",
    detailImageSrc: "assets/images/raspberryPhoto.jpeg",
    calories: 45,
    isFavorite: false,
  ),
  Fruit(
    name: "Watermeon",
    description: "watermelon is a fruit",
    imageSrc: "assets/images/watermelonIcon.jpeg",
    detailImageSrc: "assets/images/watermelonPhoto.jpeg",
    calories: 45,
    isFavorite: false,
  ),
  Fruit(
    name: "Lemon",
    description: "Lemon is a fruit",
    imageSrc: "assets/images/lemonIcon.jpeg",
    detailImageSrc: "assets/images/lemonPhoto.jpeg",
    calories: 45,
    isFavorite: false,
  ),
];
