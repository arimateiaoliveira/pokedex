import 'package:flutter/material.dart';

class FrameLamp extends StatelessWidget {
  final double width;
  final double height;
  const FrameLamp({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final double heigth = size.height;
    return Container(
      alignment: Alignment.center,
      width: width * .24,
      height: width * .24,
      decoration: BoxDecoration(
        color: const Color(0xFFD9E8EB),
        shape: BoxShape.circle,
        border: Border.all(
          width: width * .24 * .01,
          color: const Color(0xFFAD282A),
        ),
      ),
      child: LayoutBuilder(builder: (ctx, cnst) {
        final double width = cnst.maxWidth * .77;
        final double heigth = cnst.maxHeight * .77;
        return Stack(
          children: [
            Container(
              alignment: Alignment.center,
              width: width,
              height: width,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [
                    Color(0xFF3BC4FA),
                    Color(0xFF1778D5),
                  ],
                  stops: [.7, 1],
                ),
              ),
            ),
            Positioned(
              left: width * .28,
              top: width * .28,
              child: Container(
                width: width * .21,
                height: heigth * .21,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: RadialGradient(
                    colors: [
                      Color(0xFFFFFFFF),
                      Color(0xFF3AC2F9),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}
