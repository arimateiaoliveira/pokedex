import 'package:flutter/material.dart';
import 'package:pokedex/app/consts/app_colors.dart';

class TopSideElevated extends StatelessWidget {
  final double width;
  final double height;
  const TopSideElevated({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TopSideElevatedClip(),
      child: Container(
        width: width,
        height: height,
        decoration: const BoxDecoration(
          //color: AppColor.topSideElevatedColor,
          gradient: LinearGradient(
            colors: [
              AppColor.topSideElevatedColor,
              Color(0x20000000),
              AppColor.topSideElevatedColor,
              Color(0x20000000),
              AppColor.topSideElevatedColor,
            ],
            stops: [.36, .41, .53, .58, .73],
          ),
        ),
      ),
    );
  }
}

class TopSideElevatedClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    final double maxX = size.width;
    final double maxY = size.height;

    //contorno
    path
      ..lineTo(0, maxY)
      ..lineTo(maxX * .41, maxY)
      ..lineTo(maxX * .58, maxY * .52)
      ..lineTo(maxX, maxY * .52)
      ..lineTo(maxX, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
}
