import 'package:flutter/material.dart';
import 'package:fruit_tiedot/constants.dart';
import 'package:fruit_tiedot/models/fruits.dart';

class FruitDetailScreen extends StatelessWidget {
  const FruitDetailScreen({super.key, required this.fruit});

  final Fruit fruit;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(fruit.name),
        actions: [
          (fruit.isFavorite)
              ? const Icon(Icons.favorite_rounded,
                  color: Colors.redAccent, size: 30)
              : const Icon(Icons.favorite_outline_rounded, size: 30),
          const SizedBox(
            width: kDefaultPadding,
          )
        ],
      ),
    );
  }
}
