import 'package:flutter/material.dart';
import 'package:fruit_tiedot/constants.dart';
import 'package:fruit_tiedot/models/fruit.dart';

class FruitStats extends StatelessWidget {
  const FruitStats({
    super.key,
    required this.fruit,
  });

  final Fruit fruit;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                spreadRadius: 1,
                blurRadius: 8,
              ),
            ],
          ),
          child: Hero(
            transitionOnUserGestures: true,
            tag: "fruitcard${fruit.imageSrc}",
            child: ClipRRect(
              borderRadius: BorderRadius.circular((20)),
              child: Image.asset(
                fruit.detailImageSrc,
                width: 200,
                height: 380,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        const SizedBox(width: kDefaultPadding * 0.75),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (var index = 0; index < fruit.benefits.length; index++)
              TweenAnimationBuilder(
                tween: Tween<double>(begin: 0, end: 1),
                duration: Duration(milliseconds: 400 * index),
                builder: ((context, value, child) => Transform.scale(
                      scale: (value / 0.80) > 1 ? 1 : value / 0.80,
                      child: Opacity(
                        opacity: value * value * value * value,
                        child: child,
                      ),
                    )),
                child: BenefitItem(
                    title: fruit.benefits.keys.elementAt(index),
                    amount: fruit.benefits[fruit.benefits.keys.elementAt(index)]
                        as String),
              ),
          ],
        )
      ],
    );
  }
}

class BenefitItem extends StatelessWidget {
  const BenefitItem({super.key, required this.title, required this.amount});
  final String title;
  final String amount;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: Theme.of(context).textTheme.titleMedium),
        Text(amount, style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: kDefaultPadding),
      ],
    );
  }
}
