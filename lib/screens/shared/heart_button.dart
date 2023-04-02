import 'package:flutter/material.dart';
import 'package:fruit_tiedot/models/fruit.dart';
import 'package:like_button/like_button.dart';

class HeartButtonIcon extends StatefulWidget {
  const HeartButtonIcon({super.key, required this.fruit, this.size = 30});

  final Fruit fruit;
  final double size;

  @override
  State<HeartButtonIcon> createState() => _HeartButtonIconState();
}

class _HeartButtonIconState extends State<HeartButtonIcon> {
  @override
  Widget build(BuildContext context) {
    return LikeButton(
      isLiked: widget.fruit.isFavorite,
      likeBuilder: (isLiked) {
        return Icon(
          (isLiked) ? Icons.favorite_rounded : Icons.favorite_outline_rounded,
          color: (isLiked) ? Colors.redAccent : Colors.black54,
          size: widget.size,
        );
      },
      circleSize: widget.size,
      onTap: (isLiked) async {
        widget.fruit.toggleFavorite();
        return widget.fruit.isFavorite;
      },
    );
  }
}
