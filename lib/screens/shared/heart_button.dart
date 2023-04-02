import 'package:flutter/material.dart';
// import 'package:fruit_tiedot/constants.dart';
import 'package:flutter_animated_icons/lottiefiles.dart';
import 'package:flutter_animated_icons/useanimations.dart';
import 'package:flutter_animated_icons/icons8.dart';
import 'package:lottie/lottie.dart';

import 'package:fruit_tiedot/models/fruit.dart';

class HeartButtonIcon extends StatefulWidget {
  const HeartButtonIcon(
      {super.key,
      // required this.toggleFavorite,
      required this.fruit,
      this.size = 24});

  // final void Function(Fruit fruit) toggleFavorite;
  final Fruit fruit;
  final double size;

  @override
  State<HeartButtonIcon> createState() => _HeartButtonIconState();
}

class _HeartButtonIconState extends State<HeartButtonIcon>
    with SingleTickerProviderStateMixin {
  late AnimationController _favoriteController;

  void _makeFavorite(Fruit fruit) {
    setState(() {
      if (_favoriteController.status == AnimationStatus.dismissed) {
        _favoriteController.reset();
        _favoriteController.animateTo(0.6);
      } else {
        _favoriteController.reverse();
      }

      fruit.toggleFavorite();
    });
  }

  @override
  void initState() {
    _favoriteController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));

    if (widget.fruit.isFavorite) {
      _favoriteController.reset();
      _favoriteController.animateTo(0.6);
    }

    super.initState();
  }

  @override
  void didUpdateWidget(covariant HeartButtonIcon oldWidget) {
    if (oldWidget.fruit.isFavorite) {
      _favoriteController.reset();
      _favoriteController.animateTo(0.6);
    } else {
      _favoriteController.reverse();
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _favoriteController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      radius: 20,
      onTap: () => _makeFavorite(widget.fruit),
      child: Opacity(
        opacity: 0.8,
        child: Lottie.asset(
          Icons8.heart_color,
          animate: true,
          controller: _favoriteController,
          height: widget.size + 5,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
