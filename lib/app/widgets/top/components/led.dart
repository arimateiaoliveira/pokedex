import 'package:flutter/material.dart';
import 'package:pokedex/app/consts/app_colors.dart';

enum LedColor { green, yelllow, red }

class Led extends StatelessWidget {
  final double size;
  final LedColor color;
  const Led({
    Key? key,
    required this.size,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color borderColor;
    final Gradient gradient;

    if (color == LedColor.green) {
      borderColor = AppColor.ledBorderGreenColor;
      gradient = AppColor.LedGreenGradient;
    } else if (color == LedColor.red) {
      borderColor = AppColor.ledBorderRedColor;
      gradient = AppColor.LedRedGradient;
    } else {
      borderColor = AppColor.ledBorderYellowColor;
      gradient = AppColor.LedYellowGradient;
    }

    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: borderColor),
        gradient: gradient,
      ),
    );
  }
}
