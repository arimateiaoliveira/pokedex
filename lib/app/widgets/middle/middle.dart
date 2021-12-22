import 'package:flutter/material.dart';
import 'package:pokedex/app/widgets/middle/components/hinge/hinge.dart';
import 'components/screen/screen.dart';

class Middle extends StatelessWidget {
  const Middle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Positioned(
          left: size.width * 0.06,
          bottom: size.height * .34,
          child: Screen(width: size.width, height: size.height),
        ),
        Positioned(
          right: 0,
          bottom: 0,
          child: Hinge(width: size.width, height: size.height),
        ),
      ],
    );
  }
}
