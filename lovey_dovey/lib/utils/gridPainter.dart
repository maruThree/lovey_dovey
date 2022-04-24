import 'package:flutter/material.dart';

class GridPainter extends CustomPainter {
  static const rows = 10;
  static const cols = 10;

  @override
  void paint(Canvas canvas, Size size) {
    var backgroundPaint = Paint()
      ..style = PaintingStyle.fill
      ..color = Colors.lime
      ..isAntiAlias = true;

    final screenWidth = size.width;
    final screenHeight = size.height;

    Rect rect = Rect.fromLTWH(0, 0, screenWidth, screenHeight);
    canvas.drawRect(rect, backgroundPaint);

    var linePaint = Paint()
      ..style = PaintingStyle.fill
      ..color = Colors.black38
      ..isAntiAlias = true;

    final gridWidth = size.width / cols;
    final gridHeight = size.height / rows;

    for (int row = 0; row < rows; row++) {
      final y = row * gridHeight;
      final p1 = Offset(0, y);
      final p2 = Offset(screenWidth, y);

      canvas.drawLine(p1, p2, linePaint);
    }

    for (int col = 0; col < cols; col++) {
      final x = col * gridWidth;
      final p1 = Offset(x, 0);
      final p2 = Offset(x, screenHeight);

      canvas.drawLine(p1, p2, linePaint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}