import 'package:flutter/material.dart';
import 'package:fruit_tiedot/constants.dart';
import 'package:fruit_tiedot/models/fruit.dart';

class HeartButtonIcon extends StatelessWidget {
  const HeartButtonIcon(
      {super.key,
      required this.toggleFavorite,
      required this.fruit,
      this.size});

  final void Function(Fruit fruit) toggleFavorite;
  final Fruit fruit;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      radius: 20,
      onTap: () => toggleFavorite(fruit),
      child: Icon(
        size: size,
        (fruit.isFavorite)
            ? Icons.favorite_rounded
            : Icons.favorite_outline_rounded,
        color: (fruit.isFavorite) ? Colors.redAccent : kBgColorDark,
      ),
    );
  }
}
