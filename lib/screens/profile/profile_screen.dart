import 'package:flutter/material.dart';
import 'package:fruit_tiedot/constants.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            color: Colors.deepOrange,
            height: size.width,
            width: size.width,
            child: Stack(
              children: [
                Positioned(
                  // left: 80,
                  // top: 80,
                  left: (size.width - 150) / 2,
                  top: (size.width - 150) / 2,
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
                        "",
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
          ),
          FruitListTile(
            onPress: () {},
            title: "Glossary",
            icon: const Icon(Icons.library_books_rounded),
          ),
          FruitListTile(
            onPress: () {},
            title: "Types of Fruit",
            icon: const Icon(Icons.emoji_nature_outlined),
          ),
          FruitListTile(
            onPress: () {},
            title: "Random Fruit",
            icon: const Icon(Icons.shuffle_rounded),
          ),
          FruitListTile(
            onPress: () {},
            title: "Quiz",
            icon: const Icon(Icons.quiz_rounded),
          ),
          FruitListTile(
            onPress: () {},
            title: "Settings",
            icon: const Icon(Icons.settings_rounded),
          ),
          FruitListTile(
            onPress: () {},
            title: "Exit",
            icon: const Icon(Icons.exit_to_app_rounded),
          ),
        ],
      ),
    );
  }
}

class FruitListTile extends StatelessWidget {
  const FruitListTile({
    super.key,
    required this.title,
    required this.icon,
    required this.onPress,
  });
  final String title;
  final Icon icon;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPress,
      leading: icon,
      horizontalTitleGap: 0,
      title: Text(title),
    );
  }
}
