import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'color_cards.dart';
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
          spacing: 12,
          children: [
            Container(
              width: 64,
              height: 64,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: settings.seedColor,
                borderRadius: BorderRadius.circular(64)
              ),
              child: Text(
                'Seed',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: colorScheme.onPrimaryFixed,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 8,
              children: [
                primaryCard(colorScheme),
                secondaryCard(colorScheme),
                tertiaryCard(colorScheme),
                errorCard(colorScheme),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 8,
              children: [
                primaryFixedCard(colorScheme),
                secondaryFixedCard(colorScheme),
                tertiaryFixedCard(colorScheme),
                surfaceCard(colorScheme),
              ],
            ),
          ],
        ),
      ),
    );
  }
}