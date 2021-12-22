import 'package:flutter/material.dart';
import 'package:pokedex/app/consts/app_colors.dart';
import 'package:pokedex/app/widgets/bottom/bottom.dart';
import 'package:pokedex/app/widgets/middle/middle.dart';
import 'package:pokedex/app/widgets/top/top.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          color: AppColor.bgColor,
        ),
        child: Stack(
          children: const [
            Top(),
            Middle(),
            Bottom(),
          ],
        ),
      ),
    );
  }
}
