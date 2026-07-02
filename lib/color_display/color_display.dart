import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../settings.dart';
import 'color_cards.dart';
import 'color_text_field.dart';

class ColorDisplay extends StatelessWidget {
  final double scale;

  const ColorDisplay({super.key, required this.scale});

  @override
  Widget build(BuildContext context) {
    final settings = context.watch<Settings>();
    final colorScheme = settings.themeData.colorScheme;
    final spacing = 8.0*scale;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 14*scale,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 16*scale,
          children: [
            Container(
              width: 88*scale,
              height: 52*scale,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: settings.seedColor,
                borderRadius: BorderRadius.circular(52*scale)
              ),
              child: Text(
                'Seed',
                textAlign: TextAlign.center,
                textScaler: TextScaler.linear(scale),
                style: TextStyle(
                  color: colorScheme.onPrimaryFixed,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            ColorTextField(scale: scale)
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: spacing,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: spacing,
              children: [
                Row(
                  spacing: spacing,
                  children: [
                    primaryCard(colorScheme, scale),
                    secondaryCard(colorScheme, scale),
                    tertiaryCard(colorScheme, scale),
                  ],
                ),
                Row(
                  spacing: spacing,
                  children: [
                    primaryFixedCard(colorScheme, scale),
                    secondaryFixedCard(colorScheme, scale),
                    tertiaryFixedCard(colorScheme, scale),
                  ],
                ),
                surfaceCard(scale),
              ],
            ),
            Column(
              spacing: spacing,
              children: [
                errorCard(colorScheme, scale),
                inverseSurfaceCard(colorScheme, scale),
              ],
            )
          ],
        ),
      ],
    );
  }
}