import 'package:flutter/material.dart';

import 'components/action_response.dart';

class ActionButton extends StatelessWidget {
  final double size;

  const ActionButton({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: ActionButtonClip(),
      child: Container(
        alignment: Alignment.center,
        height: size,
        width: size,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
            colors: [
              Color(0xFF18191A),
              Color(0xFF5B6164),
            ],
          ),
        ),
        child: Stack(
          children: const <ActionResponse>[
            ActionResponse(alignment: Alignment.topCenter),
            ActionResponse(alignment: Alignment.centerLeft),
            ActionResponse(alignment: Alignment.center),
            ActionResponse(alignment: Alignment.bottomCenter),
            ActionResponse(alignment: Alignment.centerRight),
          ],
        ),
      ),
    );
  }
}

class ActionButtonClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    final double maxX = size.width;
    final double maxY = size.height;
    final double constant = maxX / 3;

    path
      ..moveTo(constant, 0)
      ..lineTo(constant, constant)
      ..lineTo(0, constant)
      ..lineTo(0, constant * 2)
      ..lineTo(constant, constant * 2)
      ..lineTo(constant, maxY)
      ..lineTo(constant * 2, maxY)
      ..lineTo(constant * 2, constant * 2)
      ..lineTo(maxX, constant * 2)
      ..lineTo(maxX, constant)
      ..lineTo(constant * 2, constant)
      ..lineTo(constant * 2, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
}
