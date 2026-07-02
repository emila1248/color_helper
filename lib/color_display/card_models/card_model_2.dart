import 'package:flutter/material.dart';

class CardModel2 extends StatelessWidget {
  final double scale;

  final Color color1;
  final Color color2;
  final Color color3;
  final Color color4;

  final String text1;
  final String text2;
  final String text3;
  final String text4;

  const CardModel2({
    super.key, required this.scale,
    required this.color1, required this.color2, required this.color3, required this.color4,
    required this.text1, required this.text2, required this.text3, required this.text4,
  });

  @override
  Widget build(BuildContext context) {
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
      width: 200*scale,
      child: Column(
        children: [
          Row(
            children: [
              colorCard(color1, color3, text1, 100*scale, 60*scale),
              colorCard(color2, color3, text2, 100*scale, 60*scale),
            ],
          ),
          colorCard(color3, color1, text3, 200*scale, 42*scale),
          colorCard(color4, color1, text4, 200*scale, 42*scale),
        ],
      ),
    );
  }
}