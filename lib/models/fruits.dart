class Fruit {
  const Fruit({
    required this.name,
    required this.description,
    required this.imageSrc,
    required this.calories,
  });

  final String name, imageSrc, description;
  final int calories;
}

List fruits = [
  const Fruit(
      name: "Orange",
      description: "Orange is a fruit",
      imageSrc: "assets/images/orangeIcon.jpeg",
      calories: 45),
  const Fruit(
      name: "Apple",
      description: "Apple is a fruit",
      imageSrc: "assets/images/appleIcon.jpeg",
      calories: 45),
  const Fruit(
      name: "Lime",
      description: "Lime is a fruit",
      imageSrc: "assets/images/limeIcon.jpeg",
      calories: 45),
  const Fruit(
      name: "Strawberry",
      description: "Strawberry is a fruit",
      imageSrc: "assets/images/strawberryIcon.jpeg",
      calories: 45),
  const Fruit(
      name: "Banana",
      description: "Banana is a fruit",
      imageSrc: "assets/images/bananaIcon.jpeg",
      calories: 45),
  const Fruit(
      name: "Raspberry",
      description: "Raspberry is a fruit",
      imageSrc: "assets/images/raspberryIcon.jpeg",
      calories: 45),
];
