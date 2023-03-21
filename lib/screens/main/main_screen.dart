import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:fruit_tiedot/constants.dart';
import 'package:fruit_tiedot/screens/home/home_screen.dart';

import '../favorite/favorite_screen.dart';
import '../profile/profile_screen.dart';
import 'components/bottom_nav.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  void _switchScreen(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: screens[_selectedIndex]),
      bottomNavigationBar:
          BottomNav(selectedIndex: _selectedIndex, switchScreen: _switchScreen),
    );
  }
}

List<Widget> screens = [
  HomeScreen(),
  const FavoriteScreen(),
  // const Center(
  //   child: Text("Notifications Screen"),
  // ),
  const ProfileScreen(),
];

extension DarkMode on BuildContext {
  bool get isDarkMode {
    final brightness = MediaQuery.of(this).platformBrightness;
    return brightness == Brightness.dark;
  }
}
