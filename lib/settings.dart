import 'package:flutter/material.dart';

class Settings extends ChangeNotifier {

  Color seedColor = Color(0xFFE7A7B7);
  Brightness brightness = Brightness.light;

  ThemeData get themeData => ThemeData(
    brightness: brightness,
    colorScheme: ColorScheme.fromSeed(
      seedColor: seedColor
    )
  );

}