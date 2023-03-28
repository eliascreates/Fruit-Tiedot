import 'package:flutter/material.dart';
import 'package:fruit_tiedot/constants.dart';
import 'package:fruit_tiedot/models/fruits.dart';


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
        const SizedBox(width: kDefaultPadding * 0.75),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (var name in fruit.benefits.keys)
              BenefitItem(title: name, amount: fruit.benefits[name] as String),
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
