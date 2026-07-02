import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../settings.dart';
import 'color_cards.dart';

class ColorDisplay extends StatelessWidget {
  final double scale;

  const ColorDisplay({super.key, required this.scale});

  @override
  Widget build(BuildContext context) {
    final settings = context.watch<Settings>();
    final colorScheme = settings.themeData.colorScheme;

    final spacing = 8.0*scale;

    return Row(  // 7 Left side cards + 2 Right side cards
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: spacing,
      children: [
        Column(  // 3 + 3 + Surface
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
        Column(  // Error + Inverse
          spacing: spacing,
          children: [
            errorCard(colorScheme, scale),
            inverseSurfaceCard(colorScheme, scale),
          ],
        )
      ],
    );
  }
}