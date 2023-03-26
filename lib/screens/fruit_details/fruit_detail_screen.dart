import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:fruit_tiedot/constants.dart';
import 'package:fruit_tiedot/models/fruits.dart';

import '../home/components/heart_button.dart';

class FruitDetailScreen extends StatefulWidget {
  const FruitDetailScreen({super.key, required this.fruit});

  final Fruit fruit;

  @override
  State<FruitDetailScreen> createState() => _FruitDetailScreenState();
}

class _FruitDetailScreenState extends State<FruitDetailScreen> {
  Iterable<Image> images = [];

  @override
  void initState() {
    images = fruits.map((e) {
      return Image.asset(e.detailImageSrc);
    });
    super.initState();
  }

  @override
  void didChangeDependencies() {
    for (final image in images) {
      precacheImage(image.image, context);
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context, true),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text("Fruit Details"),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FruitStats(fruit: widget.fruit),
              const SizedBox(height: kDefaultPadding),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(widget.fruit.name,
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge
                          ?.copyWith(fontWeight: FontWeight.bold)),
                  HeartButtonIcon(
                      fruit: widget.fruit,
                      toggleFavorite: (fruit) =>
                          setState(() => fruit.toggleFavorite()),
                      size: 30),
                ],
              ),
              const Divider(height: 20, color: kBgColorDark),
              Text(widget.fruit.description)
            ],
          ),
        ),
      ),
    );
  }
}

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
