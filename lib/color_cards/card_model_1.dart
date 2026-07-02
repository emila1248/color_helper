import 'package:flutter/material.dart';

class CardModel1 extends StatelessWidget {
  final double scale;

  final Color color1;
  final Color color2;
  final Color color3;
  final Color color4;

  final String text1;
  final String text2;
  final String text3;
  final String text4;

  const CardModel1({
    super.key, required this.scale,
    required this.color1, required this.color2, required this.color3, required this.color4,
    required this.text1, required this.text2, required this.text3, required this.text4,
  });

  @override
  Widget build(BuildContext context) {
    Widget colorCard(Color backgroundColor, Color textColor, String text) {
      return Expanded(
        child: Container(
          alignment: Alignment.center,
          color: backgroundColor,
          child: Text(
            text,
            textAlign: TextAlign.center,
            textScaler: TextScaler.linear(scale),
            style: TextStyle(
              color: textColor,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      );
    }

    return SizedBox(
      width: 200*scale,
      height: 168*scale,
      child: Column(
        children: [
          colorCard(color1, color2, text1),
          colorCard(color2, color1, text2),
          colorCard(color3, color4, text3),
          colorCard(color4, color3, text4),
        ],
      ),
    );
  }
}