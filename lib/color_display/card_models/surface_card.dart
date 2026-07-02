import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../settings.dart';

class SurfaceCard extends StatelessWidget {
  final double scale;

  const SurfaceCard({super.key, required this.scale});

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.watch<Settings>().themeData.colorScheme;

    Widget colorCard(Color backgroundColor, Color textColor, String text, double width, double height) {
      return Container(
        alignment: Alignment.center,
        width: width,
        height: height,
        color: backgroundColor,
        child: Text(
          text,
          textAlign: TextAlign.center,
          textScaler: TextScaler.linear(scale),
          style: TextStyle(
            color: textColor,
            fontSize: 16,
            fontWeight: FontWeight.w400,
            height: 1.33
          ),
        ),
      );
    }

    return SizedBox(
      child: Column(
        children: [
          Row(
            children: [
              colorCard(
                colorScheme.surfaceDim, colorScheme.onSurface,
                'surfaceDim', 205.33*scale, 42*scale
              ),
              colorCard(
                colorScheme.surface, colorScheme.onSurface,
                'surface', 205.33*scale, 42*scale
              ),
              colorCard(
                colorScheme.surfaceBright, colorScheme.onSurface,
                'surfaceBright', 205.33*scale, 42*scale
              ),
            ],
          ),
          Row(
            children: [
              colorCard(
                colorScheme.surfaceContainerLowest, colorScheme.onSurface,
                'surface\nContainer\nLowest', 123.2*scale, 80*scale
              ),
              colorCard(
                colorScheme.surfaceContainerLow, colorScheme.onSurface,
                'surface\nContainer\nLow', 123.2*scale, 80*scale
              ),
              colorCard(
                colorScheme.surfaceContainer, colorScheme.onSurface,
                'surface\nContainer', 123.2*scale, 80*scale
              ),
              colorCard(
                colorScheme.surfaceContainerHigh, colorScheme.onSurface,
                'surface\nContainer\nHigh', 123.2*scale, 80*scale
              ),
              colorCard(
                colorScheme.surfaceContainerHighest, colorScheme.onSurface,
                'surface\nContainer\nHighest', 123.2*scale, 80*scale
              ),
            ],
          ),
          Row(
            children: [
              colorCard(
                colorScheme.onSurface, colorScheme.surface,
                'onSurface', 154*scale, 42*scale
              ),
              colorCard(
                colorScheme.onSurfaceVariant, colorScheme.surface,
                'onSurfaceVariant', 154*scale, 42*scale
              ),
              colorCard(
                colorScheme.outline, colorScheme.surface,
                'outline', 154*scale, 42*scale
              ),
              colorCard(
                colorScheme.outlineVariant, colorScheme.onSurface,
                'outlineVariant', 154*scale, 42*scale
              ),
            ],
          )
        ],
      )
    );
  }
}