import 'package:flutter/material.dart';

class Settings extends ChangeNotifier {

  Color seedColor = Colors.pink.shade100;
  Brightness brightness = Brightness.light;

  ThemeData get themeData => ThemeData(
    brightness: brightness,
    colorScheme: ColorScheme.fromSeed(
      seedColor: seedColor
    )
  );

}