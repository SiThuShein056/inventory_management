import 'package:flutter/material.dart';

abstract class StandardTheme {
  Color get scaffoldBgColor;
  Color get cardColor;

  ThemeData get ref => ThemeData.dark();
  ThemeData get theme => ref.copyWith(
      scaffoldBackgroundColor: scaffoldBgColor,
      cardColor: lightCardColor,
      inputDecorationTheme:
          const InputDecorationTheme(border: OutlineInputBorder()));
}

const Color lightCardColor = Color.fromRGBO(27, 42, 51, 1);

class LightTheme extends StandardTheme {
  @override
  Color get cardColor => lightCardColor;

  @override
  Color get scaffoldBgColor => const Color.fromRGBO(27, 47, 65, 1);
}
