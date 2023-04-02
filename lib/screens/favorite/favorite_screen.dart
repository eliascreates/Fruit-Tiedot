import 'package:flutter/material.dart';
import 'package:fruit_tiedot/constants.dart';
import 'package:fruit_tiedot/models/fruit.dart';
import 'package:google_fonts/google_fonts.dart';
import '../fruit_details/fruit_detail_screen.dart';
import 'components/favorite_fruit_item.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List<dynamic> favoriteFruits =
        fruits.where((fruit) => fruit.isFavorite).toList();
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverAppBar(
              backgroundColor: kSecondaryColor,
              expandedHeight: 200,
              toolbarHeight: 100,
              snap: false,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Container(
                  color: Colors.white,
                  padding: const EdgeInsets.symmetric(
                      horizontal: kDefaultPadding,
                      vertical: kDefaultPadding * 0.1),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Favorite Fruits",
                        textScaleFactor: 1,
                        style: GoogleFonts.quicksand(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text("${favoriteFruits.length}/${fruits.length}",
                          textScaleFactor: 1,
                          style: Theme.of(context).textTheme.labelMedium),
                    ],
                  ),
                ),
                background: Image.asset(
                  "assets/images/fruitBackground.jpeg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            favoriteFruits.isNotEmpty
                ? SliverList(
                    delegate: SliverChildBuilderDelegate(
                      childCount: favoriteFruits.length,
                      (context, index) => Padding(
                        padding: EdgeInsets.only(
                            top: (index == 0) ? kDefaultPadding : 0,
                            bottom: kDefaultPadding,
                            left: kDefaultPadding,
                            right: kDefaultPadding),
                        child: FavoriteFruitItem(
                          fruit: favoriteFruits[index],
                          press: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => FruitDetailScreen(
                                    fruit: favoriteFruits[index]),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  )
                : SliverList(
                    delegate: SliverChildBuilderDelegate(
                      childCount: 1,
                      (context, index) => SizedBox(
                        height: size.height / 2,
                        child: Center(
                          child: Text(
                            "No favorite fruits",
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                        ),
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
