import 'package:flutter/material.dart';
import 'package:fruit_tiedot/constants.dart';


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