import 'dart:math';
import 'dart:typed_data';

import 'package:flutter/material.dart';

class Pikachu extends StatelessWidget {
  final double size;
  const Pikachu({
    Key? key,
    this.size = 100,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size * .76,
      width: size,
      child: CustomPaint(
        foregroundPainter: PikachuPaint(),
        child: Container(
            //color: Colors.red,
            ),
      ),
    );
  }
}

class PikachuPaint extends CustomPainter {
  final Size originalSize = const Size(158.33, 120.55);
  @override
  void paint(Canvas canvas, Size size) {
    /*
    Colors Config
    */
    //yellow fill
    Paint yellowFill = Paint()..color = const Color(0xFFFCE600);
    //black fill
    Paint blackFill = Paint()..color = const Color(0xFF000000);
    //white fill
    Paint whiteFill = Paint()..color = const Color(0xFFFFFFFF);
    //red fill
    Paint redFill = Paint()..color = const Color(0xFFF00506);
    //black stroke
    Paint blackStroke = Paint()
      ..color = const Color(0xFF000000)
      ..style = PaintingStyle.stroke
      ..strokeWidth = _xConv(2, size);

    /*
    Paths
    */
    Path headPath = Path();
    Path tail = Path();
    Path eyePath = Path();
    Path lightEye = Path();
    Path cheek = Path();
    Path noise = Path();
    Path armLeft = Path();
    Path armRight = Path();
    Path externalEar = Path();
    Path externalEar2 = Path();
    Path mounth = Path();

    //tail path
    tail.addPolygon([
      Offset(_xConv(00.00, size), _yConv(13.95, size)),
      Offset(_xConv(16.74, size), _yConv(61.39, size)),
      Offset(_xConv(39.91, size), _yConv(69.76, size)),
      Offset(_xConv(34.88, size), _yConv(88.46, size)),
      Offset(_xConv(60.56, size), _yConv(101.02, size)),
      Offset(_xConv(60.56, size), _yConv(47.99, size)),
    ], true);
    canvas.drawPath(tail, yellowFill);
    canvas.drawPath(tail, blackStroke);

    //earLeft
    externalEar.addOval(
      Rect.fromLTWH(
          _xConv(150.19, size), _yConv(-5.81, size), _xConv(19.71, size), _yConv(69.07, size)),
    );
    externalEar = externalEar
        .transform(_rotatePath(_rad(40.73), Offset(_xConv(150.19, size), _yConv(-5.81, size))));
    canvas.drawPath(externalEar, blackFill);
    canvas.drawPath(externalEar, blackStroke);

    //earRight
    externalEar2.addOval(
      Rect.fromLTWH(
          _xConv(16.00, size), _yConv(05.00, size), _xConv(19.71, size), _yConv(69.07, size)),
    );
    externalEar2 = externalEar2
        .transform(_rotatePath(_rad(-37.29), Offset(_xConv(16.00, size), _yConv(05.00, size))));
    canvas.drawPath(externalEar2, blackFill);
    canvas.drawPath(externalEar2, blackStroke);

    //head
    headPath.addOval(Rect.fromLTWH(
        _xConv(45.77, size), _yConv(34.6, size), _xConv(84.84, size), _yConv(66.98, size)));
    canvas.drawPath(headPath, yellowFill);
    canvas.drawPath(headPath, blackStroke);

    //cheek
    cheek
      ..addOval(Rect.fromLTWH(
          _xConv(42.42, size), _yConv(74.23, size), _xConv(20.65, size), _yConv(22.88, size)))
      ..addOval(Rect.fromLTWH(
          _xConv(111.63, size), _yConv(74.23, size), _xConv(20.65, size), _yConv(22.88, size)));
    Path head = Path.combine(PathOperation.intersect, headPath, cheek);
    canvas.drawPath(head, redFill);

    //eyes
    eyePath
      ..addOval(Rect.fromLTWH(
          _xConv(58.06, size), _yConv(58.06, size), _xConv(15.07, size), _yConv(15.63, size)))
      ..addOval(Rect.fromLTWH(
          _xConv(102.10, size), _yConv(59.16, size), _xConv(15.07, size), _yConv(15.63, size)));

    lightEye
      ..addOval(Rect.fromLTWH(
          _xConv(64.19, size), _yConv(60.27, size), _xConv(06.70, size), _yConv(06.70, size)))
      ..addOval(Rect.fromLTWH(
          _xConv(104.93, size), _yConv(61.39, size), _xConv(06.70, size), _yConv(06.70, size)));
    canvas.drawPath(eyePath, blackFill);
    canvas.drawPath(lightEye, whiteFill);

    //noise
    noise.addOval(
      Rect.fromLTWH(
          _xConv(85.39, size), _yConv(74.23, size), _xConv(03.91, size), _yConv(01.67, size)),
    );
    canvas.drawPath(noise, blackFill);

    //armLeft
    armLeft.addOval(
      Rect.fromLTWH(
          _xConv(86.51, size), _yConv(92.34, size), _xConv(43.17, size), _yConv(19.8, size)),
    );
    armLeft =
        armLeft.transform(_rotatePath(_rad(-20), Offset(_xConv(86.51, size), _yConv(92.34, size))));
    canvas.drawPath(armLeft, yellowFill);
    canvas.drawPath(armLeft, blackStroke);

    //armRight
    armRight.addOval(
      Rect.fromLTWH(
          _xConv(44.83, size), _yConv(96.05, size), _xConv(39.01, size), _yConv(25.06, size)),
    );
    armRight = armRight
        .transform(_rotatePath(_rad(-20), Offset(_xConv(44.83, size), _yConv(96.05, size))));
    canvas.drawPath(armRight, yellowFill);
    canvas.drawPath(armRight, blackStroke);

    //ear details
    var elipse = Path()
      ..addOval(Rect.fromLTWH(
          _xConv(81.49, size), _yConv(-15.08, size), _xConv(56.93, size), _yConv(71.56, size)));
    Path combine = Path.combine(PathOperation.intersect, externalEar, elipse);
    canvas.drawPath(combine, yellowFill);
    combine.reset();
    elipse.reset();
    elipse = Path()
      ..addOval(Rect.fromLTWH(
          _xConv(40.00, size), _yConv(-11.93, size), _xConv(56.93, size), _yConv(71.56, size)));
    combine = Path.combine(PathOperation.intersect, externalEar2, elipse);
    canvas.drawPath(combine, yellowFill);

    //mounth
    mounth
      ..moveTo(_xConv(74.79, size), _yConv(78.69, size))
      ..arcToPoint(Offset(_xConv(87.35, size), _yConv(78.69, size)),
          radius: Radius.circular(size.width * .05), clockwise: false)
      ..arcToPoint(Offset(_xConv(99.91, size), _yConv(81.20, size)),
          radius: Radius.circular(size.width * .05), clockwise: false);
    blackStroke.strokeWidth = _xConv(1.5, size);
    canvas.drawPath(mounth, blackStroke);

    headPath.close();
    tail.close();
    eyePath.close();
    lightEye.close();
    cheek.close();
    noise.close();
    armLeft.close();
    armRight.close();
    externalEar.close();
    externalEar2.close();
    mounth.close();
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return oldDelegate != this;
  }

  double _xConv(double x, Size size) {
    return (x / originalSize.width) * size.width;
  }

  double _yConv(double y, Size size) {
    return (y / originalSize.height) * size.height;
  }

  double _rad(double degrees) {
    return degrees * (pi / 180);
  }

  Float64List _rotatePath(double radians, Offset origin) {
    Matrix4 matrix = Matrix4.identity();

    var m = matrix
      ..clone()
      ..translate(origin.dx, origin.dy)
      ..multiply(Matrix4.rotationZ(radians))
      ..translate(-origin.dx, -origin.dy);
    return m.storage;
  }
}
