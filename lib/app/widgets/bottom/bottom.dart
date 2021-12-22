import 'package:flutter/material.dart';

import 'components/action_button/action_button.dart';
import 'components/big_button/big_button.dart';
import 'components/green_button/green_button.dart';
import 'components/start_button/start_button.dart';

class Bottom extends StatelessWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Positioned(
          left: size.width * .07,
          bottom: size.height * .18,
          child: BigButton(size: size.width * .15),
        ),
        Positioned(
          left: size.width * .59,
          bottom: size.height * .11,
          child: ActionButton(size: size.width * .27),
        ),
        Positioned(
          left: size.width * .26,
          bottom: size.height * .13,
          child: GreenButton(size: size.width * .26),
        ),
        Positioned(
          left: size.width * .27,
          bottom: size.height * .26,
          child: StartButton(size: size.width * .1, startButtonType: StartButtonType.select),
        ),
        Positioned(
          left: size.width * .45,
          bottom: size.height * .26,
          child: StartButton(size: size.width * .1),
        ),
      ],
    );
  }
}
