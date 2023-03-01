import 'package:flutter/material.dart';

enum ThemeColorNameCategory { greenDark, greenLight, blueDark, blueLight }

final appThemeData = {
  ThemeColorNameCategory.greenLight: ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.green,
    appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(color: Color.fromARGB(255, 4, 62, 6)),
        color: Colors.green),
    //iconTheme: const IconThemeData(color: Colors.white), //<-- SEE HERE
  ),
  ThemeColorNameCategory.greenDark: ThemeData(
      brightness: Brightness.dark,
      primaryColor: const Color.fromARGB(255, 4, 62, 6),
      appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.white),
          color: Color.fromARGB(255, 4, 62, 6) //<-- SEE HERE
          ),
      iconTheme: const IconThemeData(color: Colors.white)),
  ThemeColorNameCategory.blueLight: ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    appBarTheme: const AppBarTheme(
      color: Colors.blue,
      iconTheme: IconThemeData(color: Colors.white),
    ),
  ),
  ThemeColorNameCategory.blueDark: ThemeData(
    brightness: Brightness.dark,
    primaryColor: Color.fromARGB(255, 7, 54, 92),
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: Colors.white),
      color: Color.fromARGB(255, 7, 54, 92),
    ),
    //iconTheme: const IconThemeData(color: Colors.white),
  ),
};
