import 'package:flutter/material.dart';
import 'package:fruit_tiedot/constants.dart';
import 'package:fruit_tiedot/models/fruit.dart';

import 'fruit_card_gridview.dart';

class TabBarCategories extends StatelessWidget {
  const TabBarCategories({
    super.key,
    required this.tabController,
    required this.onPress,
  });

  final TabController tabController;
  final void Function(int) onPress;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      isScrollable: true,
      indicatorSize: TabBarIndicatorSize.label,
      labelColor: kSecondaryColor,
      unselectedLabelColor: kBgColorDark,
      onTap: onPress,
      labelStyle: const TextStyle(fontSize: 18),
      unselectedLabelStyle: const TextStyle(fontSize: 14),
      physics: const ClampingScrollPhysics(),
      splashBorderRadius: BorderRadius.circular(20),
      controller: tabController,
      tabs: const [
        Tab(text: "All"),
        Tab(text: "Citrus"),
        Tab(text: "Tropical"),
        Tab(text: "Berries"),
        Tab(text: "Melons"),
        Tab(text: "Other"),
      ],
    );
  }
}

class TabBarCategoryView extends StatelessWidget {
  const TabBarCategoryView({
    super.key,
    required this.tabController,
    required this.searchFruits,
    // required this.makeFavorite,
    required this.refreshData,
  });

  final TabController tabController;
  final List searchFruits;
  // final void Function(Fruit) makeFavorite;
  
  final void Function() refreshData;

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: tabController,
      children: [
        FruitCardGridView(
            // toggleFavorite: makeFavorite,
            refreshData: refreshData,
            fruitsFiltered: searchFruits),
        FruitCardGridView(
            // toggleFavorite: makeFavorite,
            refreshData: refreshData,
            fruitsFiltered: searchFruits
                .where((fruit) => fruit.type == Fruittype.citrus)
                .toList()),
        FruitCardGridView(
            // toggleFavorite: makeFavorite,
            refreshData: refreshData,
            fruitsFiltered: searchFruits
                .where((fruit) => fruit.type == Fruittype.tropical)
                .toList()),
        FruitCardGridView(
            // toggleFavorite: makeFavorite,
            refreshData: refreshData,
            fruitsFiltered: searchFruits
                .where((fruit) => fruit.type == Fruittype.berry)
                .toList()),
        FruitCardGridView(
            // toggleFavorite: makeFavorite,
            refreshData: refreshData,
            fruitsFiltered: searchFruits
                .where((fruit) => fruit.type == Fruittype.melon)
                .toList()),
        FruitCardGridView(
            // toggleFavorite: makeFavorite,
            refreshData: refreshData,
            fruitsFiltered: searchFruits
                .where((fruit) => fruit.type == Fruittype.other)
                .toList()),
      ],
    );
  }
}
