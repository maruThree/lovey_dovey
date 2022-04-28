import 'dart:math';

import 'package:flutter/material.dart';

class GridPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var backgroundPaint = Paint()
      ..style = PaintingStyle.fill
      ..color = Colors.amberAccent
      ..isAntiAlias = true;

    final screenWidth = size.width;
    final screenHeight = size.height;

    double benchsize = min(screenWidth, screenHeight)/10;
    int cols = (screenWidth/benchsize).ceil();
    int rows = (screenHeight/benchsize).ceil();

    Rect rect = Rect.fromLTWH(0, 0, screenWidth, screenHeight);
    canvas.drawRect(rect, backgroundPaint);

    var linePaint = Paint()
      ..style = PaintingStyle.fill
      ..color = Colors.black38
      ..isAntiAlias = true;

    for (int row = 0; row < rows; row++) {
      final y = row * benchsize;
      final p1 = Offset(0, y);
      final p2 = Offset(screenWidth, y);

      canvas.drawLine(p1, p2, linePaint);
    }

    for (int col = 0; col < cols; col++) {
      final x = col * benchsize;
      final p1 = Offset(x, 0);
      final p2 = Offset(x, screenHeight);

      canvas.drawLine(p1, p2, linePaint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}