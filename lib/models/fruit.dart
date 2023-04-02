import 'dart:core';

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

  String get typeName {
    return type.name[0].toUpperCase() + type.name.substring(1);
  }
}

enum Fruittype {
  citrus,
  tropical,
  melon,
  berry,
  other,
}

List<Fruit> fruits = [
  Fruit(
    name: "Orange",
    description:
        "Oranges are among the most common fruit in the world, and they provide a decent amount of vitamin C.\n\nOranges are a refreshingly healthy treat packed full of goodness. Navel oranges are the most prolific variety available, but because they do not contain seeds, they require grafting for the creation of new trees.\n\nWhile one orange tree can bear up to 60,000 flowers, only 1% of these turn into fruit. Orange is one of the world's favourite flavours. Contrary to popular belief, it does not get its name from its colour, but rather from the Tamil word for 'fragrant'.",
    benefits: {
      "Calories": "86.5 kcal",
      "Sugar": "17.2g",
      "Vitamin C": "163%",
      "Vitamin B1": "11%",
      "Vitamin A": "8%",
    },
    type: Fruittype.citrus,
    imageSrc: "assets/images/orangeIcon.png",
    detailImageSrc: "assets/images/orangePhoto.jpeg",
    isFavorite: false,
  ),
  Fruit(
    name: "Apple",
    description:
        "This popular fruit cultivated worldwide originally comes from Central Asia. Today, it is a staple in many meals, from healthy breakfasts to desserts. It is available in more than 8,000 varieties and are one of the most widely grown fruits in the world.\nIt is a deciduous fruit, but once apples are ready for picking, new buds have already started to form.\n\nApples are rich in antioxidants and dietary fibre. Apples are notable for their impressive list of phyto-nutrients. Studies suggest that its components are essential for optimal growth, development, and overall wellness.\nThey are believed to improve neurological health, reduce the risk of stroke, lower cholesterol levels, reduce the risk of diabetes and even prevent dementia.",
    benefits: {
      "Calories": "104 kcal",
      "Sugar": "21.8g",
      "Vitamin B2": "4%",
      "Vitamin C": "14%",
      "Vitamin B6": "4%",
    },
    type: Fruittype.other,
    imageSrc: "assets/images/appleIcon.jpeg",
    detailImageSrc: "assets/images/applePhoto.jpeg",
    isFavorite: false,
  ),
  Fruit(
    name: "Lime",
    description:
        "Limes are a hybrid citrus fruit, and are thought to have originally been grown in Indonesia or southeast Asia. There are many varieties of limes, including Key limes, Persian limes, sweet limes and desert limes. Like lemons, they were also used as a deterrent for scurvy on board ships on lengthy journeys.\n\nLime extract is commonly used in essential oils, cleaning products, and perfumes. Lime is also a popular ingredient in many cuisines - including Mexican, Thai and Vietnamese cuisine - due to its acidic sour juice and unique aroma",
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
    description:
        "This is one of the most common (and beloved) fruits in the world. Strawberries are thought to be berries, but this is not botanically true, and they are an accessory fruit.\n\nCommonly eaten fresh, with cream, or in a range of desserts, strawberries are a soft and sweet-tasting fruit",
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
    description:
        "This is a tropical fruit with a long body covered in a yellow skin. It's a very common fruit, and due to their accessibility and inexpensive price, bananas are one of the most popular types of fruit in the world.\n\nSince bananas have a very sweet taste, dessert recipes often use them.",
    benefits: {
      "Calories": "105 kcal",
      "Sugar": "14.4g",
      "Vitamin B6": "22%",
      "Vitamin C": "17%",
      "Potassium": "12%"
    },
    type: Fruittype.tropical,
    imageSrc: "assets/images/bananaIcon.png",
    detailImageSrc: "assets/images/bananaPhoto.jpeg",
    isFavorite: false,
  ),
  Fruit(
    name: "Raspberry",
    description:
        "Raspberries are one of the most commonly cultivated fruits in the world and they grow in temperate regions.\n\nThe raspberry has a soft flesh with a slightly sweet and juicy taste.",
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
    description:
        "The origin of watermelons is Southern Africa, and it is a large fruit that grows in tropical and subtropical regions. Watermelons taste sweet and juicy, and have a high 91.5% water content",
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
    description:
        "Lemon is a yellow citrus fruit native to Asia. Lemons house a tart soft flesh behind a thick yellow skin, and they are a famous culinary fruit. For one thing, thousands of recipes call for a squeeze of fresh lemon juice.",
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
        "Sometimes referred to as the “king of fruits”, mangoes are a tropical fruit with extremely sweet and juicy flesh.\n\nThey are native to South Asia, and they're a common fruit in countries such as India, the Philippines, and Thailand",
    benefits: {
      "Calories": "107 kcal",
      "Sugar": "24.4 g",
      "Vitamin C": "76%",
      "Vitamin A": "25%",
      "Vitamin B6": "11%",
    },
    type: Fruittype.tropical,
    imageSrc: "assets/images/mangoIcon.jpeg",
    detailImageSrc: "assets/images/mangoPhoto.jpeg",
    isFavorite: false,
  ),
  Fruit(
    name: "Grape",
    description:
        "Grapes are one of the most prevalent types of fruit, and we can find them almost everywhere, and they form the basis of many different wines, juices, jams, and dessert products.\n\nGrapes are also one of the highest-sugar fruits.",
    benefits: {
      "Calories": "69 kcal",
      "Sugar": "15.5g",
      "Vitamin C": "18%",
      "Vitamin K": "18%",
      "Vitamin B1": "5%",
    },
    type: Fruittype.berry,
    imageSrc: "assets/images/grapeIcon.jpeg",
    detailImageSrc: "assets/images/grapePhoto.jpeg",
    isFavorite: false,
  ),
  Fruit(
    name: "Cherry",
    description:
        "Cherries are one of the most popular fruit varieties. They're small fruits with a sweet and juicy taste. There are also two main types of cherry; sour cherries and sweet cherries.\n\nThese two varieties are fairly similar, but sour cherries have the slightly better nutritional profile. Sour cherries predominantly grow in Russia, Eastern Europe and Southern Asia.",
    benefits: {
      "Calories": "50 kcal",
      "Sugar": "8.5g",
      "Vitamin A": "26%",
      "Vitamin C": "17%",
      "Potassium": "5%",
    },
    type: Fruittype.other,
    imageSrc: "assets/images/cherryIcon.jpeg",
    detailImageSrc: "assets/images/cherryPhoto.jpeg",
    isFavorite: false,
  ),
  Fruit(
    name: "Avocado",
    description:
        "Avocados are an interesting fruit because they are very low in carbohydrate yet high in healthy fats. The fruit originated in South America, possibly in Mexico or Peru, and it was first referred to in English by the name of “crocodile pear”.\n\nOne of the best things about the avocado is just how adaptable it is. For instance, you may have heard of 'avocado toast', a trendy breakfast at the moment. Avocados are extremely nutrient-dense, and they are rich in fiber, protein, vitamins, and minerals - especially potassium.",
    benefits: {
      "Calories": "322 kcal",
      "Fiber": "13.5g",
      "Fat": "29.5g",
      "Vitamin K": "53%",
      "Potassium": "28%",
    },
    type: Fruittype.berry,
    imageSrc: "assets/images/avocadoIcon.jpeg",
    detailImageSrc: "assets/images/avocadoPhoto.jpeg",
    isFavorite: false,
  ),
  Fruit(
    name: "Grapefruit",
    description:
        "Grapefruit is a large citrus fruit believed to originate in Asia. Grapefruit has a slightly bitter, sour, but a little bit sweet taste.\n\nIt's rich in various nutrients, including antioxidants, minerals, and vitamins. These nutrients offer powerful health benefits and may help prevent disease.",
    benefits: {
      "Calories": "96 kcal",
      "Sugar": "15.8g",
      "Vitamin C": "120%",
      "Vitamin A": "53%",
      "Potassium": "9%",
    },
    type: Fruittype.citrus,
    imageSrc: "assets/images/grapefruitIcon.png",
    detailImageSrc: "assets/images/grapefruitPhoto.jpeg",
    isFavorite: false,
  ),
  Fruit(
    name: "Passion Fruit",
    description:
        "Passion fruit is another tropical fruit (technically a berry) that is native to the South American region, believed to originate in Brazil, Paraguay, and Argentina. Cultivation of the fruit now happens throughout the tropical and subtropical regions of the world.\n\nPassion fruit is one of the more unique fruits, and it is about the size of a golf ball. This sweet pulp is comparable to tomatoes; it is very juicy and contains lots of edible seeds.",
    benefits: {
      "Calories": "88 kcal",
      "Sugar": "2.0g",
      "Vitamin C": "45%",
      "Vitamin A": "25%",
      " Potassium": "10%",
    },
    type: Fruittype.tropical,
    imageSrc: "assets/images/passionfruitIcon.jpeg",
    detailImageSrc: "assets/images/passionfruitPhoto.jpeg",
    isFavorite: false,
  ),
  Fruit(
    name: "Pomegranate",
    description:
        "Pomegranates are unique in appearance and taste. They are believed to have originated in the India to Middle-East region, and they've long been cultivated in the Middle East and Mediterranean region. Nowadays, pomegranate cultivation is prevalent throughout dry and hot regions in the world.",
    benefits: {
      "Calories": "234 kcal",
      "Sugar": "38.5g",
      "Vitamin C": "58%",
      "Potassium": "48%",
      "Vitamin B6": "22%",
    },
    type: Fruittype.berry,
    imageSrc: "assets/images/pomegranateIcon.jpeg",
    detailImageSrc: "assets/images/pomegranatePhoto.jpeg",
    isFavorite: false,
  ),
];

//Todo: Some categories I might include
//-Drupes

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

//*Sources
// https://www.westfaliafruit.com/our-products/fresh-ripened/apples/
// https://southafrica.co.za/fruit-farming-south-africa.html
//https://www.nutritionadvance.com/healthy-foods/types-of-fruit/
//<a href="https://iconscout.com/icons/orange" target="_blank">Orange Icon</a> on <a href="https://iconscout.com">IconScout</a>
//<a href="https://iconscout.com/icons/cherry" target="_blank">Cherry Icon</a> by <a href="https://iconscout.com/contributors/aomam">Aomam .</a> on <a href="https://iconscout.com">IconScout</a>
// /<a href="https://iconscout.com/icons/orange" target="_blank">Orange Icon</a> on <a href="https://iconscout.com">IconScout</a>
// <a href="https://iconscout.com/icons/orange" target="_blank">Orange Icon</a> by <a href="https://iconscout.com/contributors/iconscout" target="_blank">IconScout Store</a>
