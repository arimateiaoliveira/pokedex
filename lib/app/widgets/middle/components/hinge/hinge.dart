import 'package:flutter/material.dart';

import 'package:pokedex/app/consts/app_colors.dart';

class Hinge extends StatelessWidget {
  final double width;
  final double height;

  const Hinge({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: width * .09,
          height: height * .90,
          color: AppColor.topSideElevatedColor,
        ),
        ClipPath(
          clipper: HingeClip(),
          child: Container(
            width: width * .09,
            height: height * .90,
            decoration: BoxDecoration(
              color: AppColor.hingeColor,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(width * .5),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class HingeClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    final double maxX = size.width;
    final double maxY = size.height;
    final Radius radius = Radius.circular(maxX / 2);

    //contorno
    path
      ..lineTo(maxX, 0)
      ..lineTo(maxX, maxY)
      ..lineTo(0, maxY);

    //hinge space one
    path
      ..moveTo(maxX, maxY * .14)
      ..arcToPoint(Offset(0, maxY * .14), radius: radius, clockwise: false)
      ..lineTo(0, maxY * .15)
      ..arcToPoint(Offset(maxX, maxY * .15), radius: radius);

    //hinge space two
    path
      ..moveTo(maxX, maxY * .83)
      ..arcToPoint(Offset(0, maxY * .83), radius: radius, clockwise: false)
      ..lineTo(0, maxY * .84)
      ..arcToPoint(Offset(maxX, maxY * .84), radius: radius);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
}
