import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:fruit_tiedot/constants.dart';
import 'package:fruit_tiedot/models/fruit.dart';

import '../shared/heart_button.dart';
import 'components/fruit_stats.dart';

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
      return Image.asset(
        e.detailImageSrc,
        fit: BoxFit.cover,
      );
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
        title: Text((widget.fruit.type != Fruittype.other)
            ? "${widget.fruit.typeName} Fruit"
            : "Fruit Details"),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(
              left: kDefaultPadding,
              right: kDefaultPadding,
              top: kDefaultPadding / 2,
              bottom: kDefaultPadding * 2),
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
                  HeartButtonIcon(fruit: widget.fruit, size: 30),
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
