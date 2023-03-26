import 'package:flutter/material.dart';
import 'package:fruit_tiedot/constants.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return Column(
      children: [
        Container(
          color: Colors.deepOrange,
          height: _size.width,
          width: _size.width,
          child: Stack(
            children: [
              Positioned(
                // left: 80,
                // top: 80,
                left: (_size.width - 150) / 2,
                top: (_size.width - 150) / 2,
                child: Column(
                  children: [
                    ClipOval(
                      child: Image.asset(
                        "assets/images/profileIcon.jpeg",
                        width: 150,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: kDefaultPadding),
                    Text(
                      "Fruit Lover",
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge
                          ?.copyWith(color: Colors.white),
                    ),
                    const SizedBox(height: kDefaultPadding),
                    Text(
                      "20",
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(color: Colors.white),
                    ),
                  ],
                ),
              ),
              const Positioned(
                right: 20,
                top: 20,
                child: Icon(
                  Icons.notifications_rounded,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              const Positioned(
                right: 20,
                top: 20,
                child: Icon(
                  Icons.notifications_rounded,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
