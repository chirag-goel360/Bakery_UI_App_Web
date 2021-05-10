import 'package:flutter/material.dart';

class MyPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    final double _xScaling = size.width / 150;
    final double _yScaling = size.height / 60;
    path.lineTo(0 * _xScaling, 11 * _yScaling);
    path.cubicTo(
      37 * _xScaling,
      0 * _yScaling,
      41 * _xScaling,
      60 * _yScaling,
      149 * _xScaling,
      0 * _yScaling,
    );
    path.cubicTo(
      41 * _xScaling,
      40 * _yScaling,
      37 * _xScaling,
      0 * _yScaling,
      0 * _xScaling,
      0 * _yScaling,
    );
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
