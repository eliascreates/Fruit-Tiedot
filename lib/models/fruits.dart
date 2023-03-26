import 'package:fruit_tiedot/constants.dart';

class Fruit {
  Fruit({
    required this.name,
    required this.description,
    required this.benefits,
    required this.type,
    required this.imageSrc,
    required this.detailImageSrc,
    this.isFavorite = false,
  });

  final String name, imageSrc, detailImageSrc, description;
  final Fruittype type;
  final Map<String, String> benefits;
  bool isFavorite;

  void toggleFavorite() {
    isFavorite = !isFavorite;
  }
}

enum Fruittype {
  citrus,
  tropical,
  melon,
  berry,
  other,
}

List fruits = [
  Fruit(
    name: "Orange",
    description: "Orange is a fruit",
    benefits: {
      "Calories": "86.5 kcal",
      "Sugar": "17.2g",
      "Vitamin C": "163%",
      "Vitamin B1": "11%",
      "Vitamin A": "8%",
    },
    type: Fruittype.citrus,
    imageSrc: "assets/images/orangeIcon.jpeg",
    detailImageSrc: "assets/images/orangePhoto.jpeg",
    isFavorite: false,
  ),
  Fruit(
    name: "Apple",
    description: "Apple is a fruit",
    benefits: {
      "Calories": "104 kcal",
      "Sugar": "21.8g",
      "Vitamin B2": "4%",
      "Vitamin C": "14%",
      "Vitamin B6": "4%",
    },
    type: Fruittype.other,
    imageSrc: "assets/images/appleIcon.jpeg",
    detailImageSrc: "assets/images/applePhoto.png",
    isFavorite: false,
  ),
  Fruit(
    name: "Lime",
    description: "Lime is a fruit",
    benefits: {
      "Calories": "31.3 kcal",
      "Sugar": "1.1g",
      "Vitamin C": "32%",
      "Potassium": "2%",
      "Calcium": "2%",
    },
    type: Fruittype.citrus,
    imageSrc: "assets/images/limeIcon.jpeg",
    detailImageSrc: "assets/images/limePhoto.jpeg",
    isFavorite: false,
  ),
  Fruit(
    name: "Strawberry",
    description: "Strawberry is a fruit",
    benefits: {
      "Calories": "48.6 kcal",
      "Sugar": "7.4g",
      "Vitamin C": "149%",
      "Folate": "9%",
      "Potassium": "7%",
    },
    type: Fruittype.other,
    imageSrc: "assets/images/strawberryIcon.jpeg",
    detailImageSrc: "assets/images/strawberryPhoto.png",
    isFavorite: false,
  ),
  Fruit(
    name: "Banana",
    description: "Banana is a fruit",
    benefits: {
      "Calories": "105 kcal",
      "Sugar": "14.4g",
      "Vitamin B6": "22%",
      "Vitamin C": "17%",
      "Potassium": "12%"
    },
    type: Fruittype.tropical,
    imageSrc: "assets/images/bananaIcon.jpeg",
    detailImageSrc: "assets/images/bananaPhoto.jpeg",
    isFavorite: false,
  ),
  Fruit(
    name: "Raspberry",
    description: "Raspberry is a fruit",
    benefits: {
      "Calories": "64 kcal",
      "Sugar": "5.4g",
      "Vitamin C": "54%",
      "Vitamin K": "12%",
      "Manganese": "41%",
    },
    type: Fruittype.berry,
    imageSrc: "assets/images/raspberryIcon.jpeg",
    detailImageSrc: "assets/images/raspberryPhoto.jpeg",
    isFavorite: false,
  ),
  Fruit(
    name: "Watermelon",
    description: "watermelon is a fruit",
    benefits: {
      "Calories": " 46.2 kcal",
      "Sugar": "9.5g",
      "Vitamin C": "21%",
      "Vitamin A": "18%",
      "Potassium": "5%",
    },
    type: Fruittype.melon,
    imageSrc: "assets/images/watermelonIcon.jpeg",
    detailImageSrc: "assets/images/watermelonPhoto.jpeg",
    isFavorite: false,
  ),
  Fruit(
    name: "Lemon",
    description: "Lemon is a fruit",
    benefits: {
      "Calories": "25.8 kcal",
      "Sugar": "1.5g",
      "Vitamin C": "51%",
      "Vitamin B1": "2%",
      "Vitamin B6": "2%",
    },
    type: Fruittype.citrus,
    imageSrc: "assets/images/lemonIcon.jpeg",
    detailImageSrc: "assets/images/lemonPhoto.jpeg",
    isFavorite: false,
  ),
  Fruit(
    name: "Mango",
    description:
        "Sometimes referred to as the “king of fruits”, mangoes are a tropical fruit with extremely sweet and juicy flesh. They are native to South Asia, and they're a common fruit in countries such as India, the Philippines, and Thailand",
    benefits: {
      "Calories": "107 kcal",
      "Sugar": "24.4 g",
      "Vitamin C": "76%",
      "Vitamin A": "25%",
      "Vitamin B6": "11%",
    },
    type: Fruittype.citrus,
    imageSrc: "assets/images/mangoIcon.jpeg",
    detailImageSrc: "assets/images/mangoPhoto.jpeg",
    isFavorite: false,
  ),
];


// "Calories": "107 kcal",
// "Sugar": "24.4 g",
// "Vitamin C": "76%",
// "Vitamin A": "25%",
// "Vitamin B6": "11%",


//*RDA
//Recommended Dietary Allowances (RDAs) are the levels of intake of essential 
//nutrients that, on the basis of scientific knowledge, are judged by the Food 
//and Nutrition Board to be adequate to meet the known nutrient needs of practically 
//all healthy persons

//* Manganese
// Manganese is a trace mineral that is present in tiny amounts in the body. 
//It is found mostly in bones, the liver, kidneys, and pancreas. Manganese helps
// the body form connective tissue, bones, blood clotting factors, and sex hormones.

//* Apple
// Calories: 104 kcal
// Sugar: 21.8 g
// Vitamin B2: 4
// Vitamin C: 14
// Vitamin B6: 4
// Potassium: 6


//*Banana
// Calories: 105 kcal
// Sugar: 14.4 g
// Vitamin B6: 22 
// Vitamin C: 17
// Protein: 1.3 g
// Potassium: 12

//*Orange
// "Calories": "86.5 kcal"
// "Sugar": "17.2g"
// "Vitamin C": "163%"
// "Vitamin B1": "11%"
// "Vitamin A": "8%"

//*Strawberry
// "Calories": "48.6 kcal",
// "Sugar": "7.4g",
// "Vitamin C": "149%" ,
// "Folate": "9%" ,
// "Potassium": "7%" ,

//* Raspberry
// "Calories": "64 kcal",
// "Sugar": "5.4g",
// "Vitamin C": "54%",
// "Vitamin K": 12%,
// "Manganese": "41%",

//*Watermelon
// "Calories":" 46.2 kcal",
// "Sugar": "9.5g",
// "Vitamin C": "21%",
// "Vitamin A": "18%",
// "Potassium": "5%",

//*Lemon
// "Calories": "25.8 kcal",
// "Sugar": "1.5g",
// "Vitamin C": "51%",
// "Vitamin B1": "2%",
// "Vitamin B6": "2%",

//*Lime
// "Calories": "31.3 kcal"
// "Sugar": "1.1g"
// "Vitamin C": "32%"
// "Potassium": "2%"
// "Calcium": "2%"