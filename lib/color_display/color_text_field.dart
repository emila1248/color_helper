import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../settings.dart';

class ColorTextField extends StatelessWidget {
  final double scale;

  const ColorTextField({super.key, required this.scale});

  @override
  Widget build(BuildContext context) {
    final settings = context.watch<Settings>();
    final colorScheme = settings.themeData.colorScheme;

    void setSeed(String string) {
      if (string.length != 6) return;

      final color = int.tryParse('FF${string.toUpperCase()}', radix: 16);
      if (color == null) return;

      settings.seedColor = Color(color);
    }

    return SizedBox(
      width: 90*scale,
      height: 40*scale,
      child: TextFormField(
        onFieldSubmitted: (value) => setSeed(value),
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: colorScheme.outline
            )
          )
        ),
      ),
    );
  }
}
