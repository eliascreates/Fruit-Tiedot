import 'package:flutter/material.dart';
import 'package:fruit_tiedot/constants.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({
    super.key,
    required this.selectedIndex,
    required this.switchScreen,
  });

  final int selectedIndex;
  final void Function(int) switchScreen;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      currentIndex: selectedIndex,
      onTap: switchScreen,
      unselectedItemColor: kBgColorDark.withOpacity(0.3),
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded, size: 30),
            label: "Home",
            tooltip: "Home"),
        BottomNavigationBarItem(
            icon: Icon(Icons.favorite_rounded, size: 30),
            label: "Favorite",
            tooltip: "Favorites"),
        // BottomNavigationBarItem(
        //     icon: Icon(Icons.notifications_rounded, size: 30),
        //     label: "Notifications",
        //     tooltip: "Notifications"),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_rounded, size: 30),
          label: "Profile",
          tooltip: "Profile",
        ),
      ],
    );
  }
}
