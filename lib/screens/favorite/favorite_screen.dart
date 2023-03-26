import 'package:flutter/material.dart';
import 'package:fruit_tiedot/constants.dart';
import 'package:fruit_tiedot/models/fruits.dart';
// import 'package:fruit_tiedot/screens/home/components/heart_button.dart';
import 'package:google_fonts/google_fonts.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<dynamic> favoriteFruits =
        fruits.where((fruit) => fruit.isFavorite).toList();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
              left: kDefaultPadding / 2,
              top: kDefaultPadding,
              right: kDefaultPadding / 2),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: kDefaultPadding / 2),
                child: Text(
                  "Favorite Fruits",
                  style: GoogleFonts.duruSans(
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(height: kDefaultPadding / 2),
              Expanded(
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    const SizedBox(height: kDefaultPadding),
                    ...favoriteFruits
                        .map((fruit) =>
                            FavoriteFruitItem(fruit: fruit, press: () {}))
                        .toList(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FavoriteFruitItem extends StatelessWidget {
  const FavoriteFruitItem({
    super.key,
    required this.fruit,
    required this.press,
  });
  final Fruit fruit;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    // Size _size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(
        bottom: kDefaultPadding,
        left: kDefaultPadding / 2,
        right: kDefaultPadding / 2,
      ),
      child: InkWell(
        splashColor: kSecondaryColor,
        splashFactory: InkRipple.splashFactory,
        borderRadius: BorderRadius.circular(20),
        onTap: press,
        child: Container(
          padding: const EdgeInsets.all(kDefaultPadding / 2),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(kDefaultPadding / 2),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade400,
                spreadRadius: 1,
                blurRadius: 4,
                blurStyle: BlurStyle.outer,
              )
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(kDefaultPadding / 2),
                    child: Image.asset(
                      fruit.imageSrc,
                      width: 50,
                      height: 50,
                      fit: BoxFit.fill,
                    ),
                  ),
                  const SizedBox(width: kDefaultPadding),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        fruit.name,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      SizedBox(
                        width: 200,
                        child: Text(
                          fruit.description,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          textWidthBasis: TextWidthBasis.parent,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Icon(Icons.chevron_right_rounded)
            ],
          ),
        ),
      ),
    );
  }
}
