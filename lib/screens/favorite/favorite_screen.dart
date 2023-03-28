import 'package:flutter/material.dart';
import 'package:fruit_tiedot/constants.dart';
import 'package:fruit_tiedot/models/fruits.dart';
// import 'package:fruit_tiedot/screens/home/components/heart_button.dart';
import 'package:google_fonts/google_fonts.dart';

import '../fruit_details/fruit_detail_screen.dart';
import 'components/favorite_fruit_item.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    List<dynamic> favoriteFruits =
        fruits.where((fruit) => fruit.isFavorite).toList();
    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   elevation: 0,
      //   toolbarHeight: 40,
      //   backgroundColor: Colors.transparent,
      //   title: Text(
      //     "Favorite Fruits",
      //     style: GoogleFonts.quicksand(
      //       fontSize: 20,
      //       fontWeight: FontWeight.w400,
      //     ),
      //   ),
      // ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
              left: kDefaultPadding / 2, right: kDefaultPadding / 2),
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                centerTitle: true,
                elevation: 0,
                backgroundColor: Colors.transparent,
                expandedHeight: 80,
                toolbarHeight: 80,
                pinned: false,
                title: Column(
                  children: [
                    Text(
                      "Favorite Fruits",
                      style: GoogleFonts.quicksand(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "${favoriteFruits.length}/${fruits.length}",
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ],
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  childCount: favoriteFruits.length,
                  (context, index) => FavoriteFruitItem(
                    fruit: favoriteFruits[index],
                    press: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) =>
                              FruitDetailScreen(fruit: favoriteFruits[index]),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
