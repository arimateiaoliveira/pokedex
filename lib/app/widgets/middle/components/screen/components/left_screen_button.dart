import 'package:flutter/material.dart';

class LeftSceenButton extends StatelessWidget {
  final double size;
  const LeftSceenButton({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: const BoxDecoration(
        color: Color(0xFFE51D20),
        shape: BoxShape.circle,
      ),
    );
  }
}
