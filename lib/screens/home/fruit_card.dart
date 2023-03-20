import 'package:flutter/material.dart';
import 'package:fruit_tiedot/constants.dart';
import 'package:fruit_tiedot/models/fruits.dart';



class FruitCard extends StatelessWidget {
  const FruitCard({super.key, required this.fruit});
  final Fruit fruit;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.passthrough,
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(kDefaultPadding, kDefaultPadding,
              kDefaultPadding, kDefaultPadding * 2.2),
          // height: 180,
          // width: 150,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Image.asset(
            fruit.imageSrc,
            fit: BoxFit.contain,
            // height: 100,
            // width: 100,
          ),
        ),
        const Positioned(
          top: 10,
          right: 15,
          child: Icon(
            Icons.favorite_outline_rounded,
            color: kBgColorDark,
          ),
        ),
        Positioned(
          bottom: 30,
          left: 20,
          child: Text(
            fruit.name,
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 10),
        Positioned(
          bottom: 10,
          left: 20,
          child: Text(
            fruit.description,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style:
                Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: 11),
          ),
        ),
      ],
    );
  }
}
