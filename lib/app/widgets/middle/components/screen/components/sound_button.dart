import 'package:flutter/material.dart';

class SoundButton extends StatelessWidget {
  final double size;
  const SoundButton({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size * .08),
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF7B8287),
            Color(0xFF324144),
          ],
        ),
      ),
      child: Container(
        width: size * .85,
        height: size * .85,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(size * .08),
          gradient: const LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              Color(0xFF4A494E),
              Color(0xFF525157),
            ],
          ),
        ),
        child: Container(
          width: size * .62,
          height: size * .62,
          decoration: const BoxDecoration(
            color: Color(0xFF182022),
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
