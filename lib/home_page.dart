import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'color_cards/color_cards.dart';
import 'settings.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final settings = context.watch<Settings>();
    final colorScheme = settings.themeData.colorScheme;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 8,
              children: [
                primaryColorCard(colorScheme),
                secondaryColorCard(colorScheme),
                tertiaryColorCard(colorScheme),
                errorColorCard(colorScheme),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 8,
              children: [
                primaryFixedColorCard(colorScheme),
              ],
            ),
          ],
        ),
      ),
    );
  }
}