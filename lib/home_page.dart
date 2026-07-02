import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'color_cards/color_card_1.dart';
import 'settings.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final settings = context.watch<Settings>();
    final colorScheme = settings.themeData.colorScheme;

    return Scaffold(
      body: Center(
        child: ColorCard1(
          scale: 1,
          color1: colorScheme.primary,
          color2: colorScheme.onPrimary,
          color3: colorScheme.primaryContainer,
          color4: colorScheme.onPrimaryContainer,
          text1: 'primary',
          text2: 'onPrimary',
          text3: 'primaryContainer',
          text4: 'onPrimaryContainer'
        ),
      ),
    );
  }
}