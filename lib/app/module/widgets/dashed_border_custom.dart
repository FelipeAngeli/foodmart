import 'package:flutter/material.dart';
import 'package:path_drawing/path_drawing.dart';

class DashedBorderCustom extends CustomPainter {
  final double dashWidth;
  final double dashSpace;
  final Color color;
  final double strokeWidth;

  DashedBorderCustom({
    this.dashWidth = 5.0,
    this.dashSpace = 3.0,
    this.color = const Color(0xFFFF8C00),
    this.strokeWidth = 2.0,
  });

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    var path = Path()
      ..addRRect(RRect.fromRectAndRadius(Rect.fromLTWH(0, 0, size.width, size.height), const Radius.circular(60)));

    path = dashPath(path, dashArray: CircularIntervalList<double>([dashWidth, dashSpace]));

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
