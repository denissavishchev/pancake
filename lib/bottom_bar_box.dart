import 'package:flutter/material.dart';

import 'bottom_bar.dart';

class BottomBarBox extends StatelessWidget {
  const BottomBarBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.1,
      color: Colors.transparent,
      child: CustomPaint(
        painter: Frame(),
        child: const BottomBar(),
        // child: BottomBar(),
      ),
    );
  }
}

class Frame extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    var paintFrame = Paint()
      ..color = const Color(0xff3ea0db).withOpacity(0.6)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4.0
      ..isAntiAlias = true;

    var pathFrame = Path()
      ..moveTo(0, size.height * 0.6)
      ..quadraticBezierTo(
          0, size.height * 0.3, size.width * 0.1, size.height * 0.3)
      ..lineTo(size.width * 0.41, size.height * 0.3)
      ..quadraticBezierTo(size.width * 0.43, 0, size.width * 0.5, 0)
      ..quadraticBezierTo(size.width * 0.57, 0, size.width *0.59, size.height * 0.3)
      ..lineTo(size.width * 0.9, size.height * 0.3)
      ..quadraticBezierTo(size.width, size.height * 0.3, size.width, size.height * 0.6)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..lineTo(0, size.height * 0.6);

    canvas.drawPath(pathFrame, paintFrame);
    
    var paint = Paint()
      ..color = const Color(0xff0c2342).withOpacity(0.7)
      ..style = PaintingStyle.fill
      ..strokeWidth = 10.0
      ..isAntiAlias = true;


    var path = Path()
    ..moveTo(0, size.height * 0.6)
    ..quadraticBezierTo(
        0, size.height * 0.3, size.width * 0.1, size.height * 0.3)
      ..lineTo(size.width * 0.41, size.height * 0.3)
      ..quadraticBezierTo(size.width * 0.43, 0, size.width * 0.5, 0)
      ..quadraticBezierTo(size.width * 0.57, 0, size.width *0.59, size.height * 0.3)
      ..lineTo(size.width * 0.9, size.height * 0.3)
      ..quadraticBezierTo(size.width, size.height * 0.3, size.width, size.height * 0.6)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..lineTo(0, size.height * 0.6);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
