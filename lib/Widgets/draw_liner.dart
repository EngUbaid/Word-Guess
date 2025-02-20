import 'package:flutter/material.dart';

class DrawLiner extends CustomPainter {
  final List<Offset> connectedPoints;

  DrawLiner(this.connectedPoints);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 5.0
      ..strokeCap = StrokeCap.round;

    for (int i = 0; i < connectedPoints.length - 1; i++) {
      canvas.drawLine(connectedPoints[i], connectedPoints[i + 1], paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}