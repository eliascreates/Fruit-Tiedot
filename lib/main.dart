import 'package:flutter/material.dart';
import 'package:fruit_tiedot/constants.dart';
import 'package:fruit_tiedot/theme.dart';
import 'package:google_fonts/google_fonts.dart';

import 'screens/main/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Fruits Tiedot App",
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[200],
        primaryColor: kSecondaryColor,
        primarySwatch: Colors.amber,
        iconTheme: const IconThemeData(color: kBgColorDark),
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: kBgColorDark),
      ),
      // darkTheme: darkThemeData(context),
      home: const MainScreen(),
    );
  }
}
