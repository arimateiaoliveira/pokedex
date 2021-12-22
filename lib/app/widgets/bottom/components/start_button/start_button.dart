import 'package:flutter/material.dart';
import 'package:pokedex/app/consts/app_colors.dart';

enum StartButtonType { start, select }

class StartButton extends StatelessWidget {
  final StartButtonType startButtonType;
  final double size;

  const StartButton({
    Key? key,
    this.startButtonType = StartButtonType.start,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color color;
    final Color colorBorder;

    switch (startButtonType) {
      case StartButtonType.select:
        color = AppColor.startButtonSelectColor;
        colorBorder = AppColor.startButtonSelectBorderColor;
        break;
      default:
        color = AppColor.startButtonStartColor;
        colorBorder = AppColor.startButtonStartBorderColor;
    }

    return Container(
      alignment: Alignment.center,
      height: size * .24,
      width: size,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(
          width: size * .02,
          color: colorBorder,
        ),
        borderRadius: BorderRadius.circular(size * .05),
      ),
    );
  }
}
