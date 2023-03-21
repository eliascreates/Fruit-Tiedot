import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
        title: const Text("Fruit Details"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular((20)),
                  child: Image.asset(
                    fruit.detailImageSrc,
                    width: 200,
                    fit: BoxFit.fill,
                  ),
                ),
                const SizedBox(width: kDefaultPadding),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Vitamin C",
                        style: Theme.of(context).textTheme.titleMedium),
                    Text("83%", style: Theme.of(context).textTheme.titleLarge),
                    const SizedBox(height: kDefaultPadding),
                    Text("Calories",
                        style: Theme.of(context).textTheme.titleMedium),
                    Text("45", style: Theme.of(context).textTheme.titleLarge),
                  ],
                )
              ],
            ),
            const SizedBox(height: kDefaultPadding),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(fruit.name,
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(fontWeight: FontWeight.bold)),
                (fruit.isFavorite)
                    ? const Icon(Icons.favorite_rounded,
                        color: Colors.redAccent, size: 30)
                    : const Icon(Icons.favorite_outline_rounded, size: 30),
              ],
            ),
            const Divider(height: 20, color: kBgColorDark),
            Text(fruit.description)
          ],
        ),
      ),
    );
  }
}
