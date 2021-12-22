import 'package:flutter/material.dart';
import 'package:pokedex/app/consts/app_colors.dart';

import 'screen_monitor.dart';

class ScreenBorder extends StatelessWidget {
  const ScreenBorder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (ctx, constraints) {
      return Stack(
        children: [
          ClipPath(
            clipper: ScreenBorderClip(),
            child: Container(
              decoration: BoxDecoration(
                color: AppColor.screenBorderColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(constraints.maxWidth * .06),
                ),
                border: Border.all(color: const Color(0xFFAD282A)),
              ),
            ),
          ),
          Positioned(
            top: constraints.maxHeight * .07,
            right: (constraints.maxWidth - (constraints.maxWidth * .82)) / 2,
            child: ScreenMonitor(
              width: constraints.maxWidth,
              height: constraints.maxHeight,
            ),
          ),
        ],
      );
    });
  }
}

class ScreenBorderClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    final double maxX = size.width;
    final double maxY = size.height;

    //contorno
    path
      ..lineTo(0, maxY - (maxX * .14))
      ..lineTo(maxX * .14, maxY)
      ..lineTo(maxX, maxY)
      ..lineTo(maxX, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
}
