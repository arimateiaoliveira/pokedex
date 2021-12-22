import 'package:flutter/material.dart';

abstract class AppColor {
  static const Color bgColor = Color(0xFFE51D20);
  static const Color hingeColor = Color(0xFFCC1416);
  static const Color topSideColor = Color(0xFFCC1416);
  static const Color topSideElevatedColor = Color(0xFFA51A17);
  static const Color screenBorderColor = Color(0xFFC4C4C4);
  static const Color screenMonitorColor = Color(0xFF777474);
  static const Color greenButtonColor = Color(0xFF49B15C);
  static const Color greenButtonBorderColor = Color(0xFF5C743A);
  static const Color startButtonStartColor = Color(0xFF0F6594);
  static const Color startButtonStartBorderColor = Color(0xFF3B557B);
  static const Color startButtonSelectColor = Color(0xFFA51A17);
  static const Color startButtonSelectBorderColor = Color(0xFFBC1F21);
  static const Color ledBorderRedColor = Color(0xFFBC1F21);
  static const Color ledBorderYellowColor = Color(0xFFEA960A);
  static const Color ledBorderGreenColor = Color(0xFF5C743A);

  //gradient
  static const Gradient LedRedGradient = RadialGradient(
    colors: [Color(0xFFFF9282), Color(0xFFE0433F)],
  );
  static const Gradient LedYellowGradient = RadialGradient(
    colors: [Color(0xFFFEDB6A), Color(0xFFFABE17)],
  );
  static const Gradient LedGreenGradient = RadialGradient(
    colors: [Color(0xFFBDEAA7), Color(0xFF52C153)],
  );
}
