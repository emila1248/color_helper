import 'package:flutter/material.dart';

class CardModel3 extends StatelessWidget {
  final double scale;

  final Color color1;
  final Color color2;
  final Color color3;
  final Color color4;
  final Color color5;

  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final String text5;

  const CardModel3({
    super.key, required this.scale,
    required this.color1, required this.color2, required this.color3, required this.color4, required this.color5,
    required this.text1, required this.text2, required this.text3, required this.text4, required this.text5,
  });

  @override
  Widget build(BuildContext context) {
    Widget colorCard(Color backgroundColor, Color textColor, String text, double width) {
      return Container(
        alignment: Alignment.center,
        width: width,
        height: 42*scale,
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
      height: 172*scale,
      child: Column(
        children: [
          colorCard(color1, color2, text1, 200*scale),
          colorCard(color2, color1, text2, 200*scale),
          colorCard(color3, color1, text3, 200*scale),
          Row(
            children: [
              colorCard(color4, color2, text4, 98*scale),
              SizedBox(width: 4*scale),
              colorCard(color5, color2, text5, 98*scale),
            ],
          ),
        ],
      ),
    );
  }
}