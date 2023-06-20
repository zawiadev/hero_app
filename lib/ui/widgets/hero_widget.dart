

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget HeroHomeWiget() {
  return AspectRatio(
    aspectRatio: 16/9,
    child: Container(
      child: Text("Heroo") ,),);
}



class CustomShapePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.blue.withOpacity(0.1)
      ..strokeWidth = 15;

    var path = Path();
    path.moveTo(0,0);
    path.lineTo(size.width, 0);

    path.lineTo(size.width, size.height*0.3);
    path.lineTo(size.width*0.2, size.height*0.2);
    path.lineTo(size.width*0.9, size.height);
    path.lineTo(0, size.height*0.8);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomShapePainter oldDelegate) {
    return false;
  }
}