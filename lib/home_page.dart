import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'color_display/color_display.dart';
import 'settings.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final settings = context.watch<Settings>();
    final colorScheme = settings.themeData.colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.surfaceContainer,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 14,
          children: [
            ElevatedButton(
              onPressed: () => {},
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(settings.seedColor),
                padding: WidgetStatePropertyAll(EdgeInsetsGeometry.zero),
                fixedSize: WidgetStatePropertyAll(Size(88, 52))
              ),
              child: Text(
                'Seed',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: colorScheme.onPrimaryFixed,
                  fontSize: 19,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            ColorDisplay(scale: 1),
          ],
        )
      ),
    );
  }
}
