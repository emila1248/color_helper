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
      backgroundColor: colorScheme.surface,
      body: Center(
        child: ColorDisplay(scale: 1),
      ),
    );
  }
}
