import 'package:flutter/material.dart';

class Settings extends ChangeNotifier {

  Color seedColor = Colors.pink;
  Brightness brightness = Brightness.light;
  
  ThemeData get themeData => ThemeData(
    brightness: brightness,
    colorScheme: ColorScheme.fromSeed(
      seedColor: seedColor
    )
  );

}