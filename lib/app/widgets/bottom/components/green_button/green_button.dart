import 'package:flutter/material.dart';
import 'package:pokedex/app/consts/app_colors.dart';

class GreenButton extends StatelessWidget {
  final double size;

  const GreenButton({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: size * .54,
      width: size,
      decoration: BoxDecoration(
        color: AppColor.greenButtonColor,
        border: Border.all(
          width: size * .03,
          color: AppColor.greenButtonBorderColor,
        ),
        borderRadius: BorderRadius.circular(size * .15),
      ),
    );
  }
}
