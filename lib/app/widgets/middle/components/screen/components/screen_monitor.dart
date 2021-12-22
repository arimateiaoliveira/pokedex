import 'package:flutter/material.dart';
import 'package:pokedex/app/consts/app_colors.dart';
import 'package:pokedex/app/widgets/paints/pikachu.dart';

class ScreenMonitor extends StatelessWidget {
  final double height;
  final double width;
  const ScreenMonitor({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double widthP = width * .82;
    final double heightP = height * .69;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          alignment: Alignment.center,
          width: widthP,
          height: heightP,
          decoration: BoxDecoration(
            color: AppColor.screenMonitorColor,
            borderRadius: BorderRadius.circular(widthP * .06),
          ),
        ),
        Positioned(
          bottom: -height * .08,
          left: height * .19,
          child: Pikachu(
            size: widthP * .62,
          ),
        ),
      ],
    );
  }
}
