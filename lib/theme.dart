import 'package:flutter/material.dart';
import 'package:fruit_tiedot/constants.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData darkThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
    appBarTheme: const AppBarTheme(backgroundColor: kBgColorDark),
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: kBgColorDark,
    iconTheme: const IconThemeData(color: kBgColorLight),
    textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
        .apply(bodyColor: Colors.white),
    canvasColor: kSecondaryColor,
    colorScheme: const ColorScheme.dark(
      primary: kPrimaryColor,
      secondary: kSecondaryColor,
      error: kErrorColor,
    ),
  );
}
