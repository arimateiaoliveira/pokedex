import 'package:flutter/material.dart';
import 'components/left_screen_button.dart';
import 'components/screen_border.dart';
import 'components/sound_button.dart';

class Screen extends StatelessWidget {
  final double width;
  final double height;
  const Screen({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width * .77,
      height: height * .35,
      child: LayoutBuilder(builder: (ctx, cnst) {
        return Stack(
          children: [
            const ScreenBorder(),
            Positioned(
                left: cnst.maxWidth * .16,
                bottom: cnst.maxHeight * .06,
                child: LeftSceenButton(size: cnst.maxWidth * .06)),
            Positioned(
                right: cnst.maxWidth * .16,
                bottom: cnst.maxHeight * .04,
                child: SoundButton(size: cnst.maxWidth * .08)),
          ],
        );
      }),
    );
  }
}
