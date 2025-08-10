import 'package:flutter/material.dart';



class VerticalSlantClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double slant = 40; // tilt amount for top and bottom
    double radius = 20; // corner radius

    Path path = Path();

    // Start at top-left with a curve
    path.moveTo(0, slant + radius);
    path.quadraticBezierTo(0, slant, radius, slant);

    // Top edge slanted to top-right with curve
    path.lineTo(size.width - radius, 0);
    path.quadraticBezierTo(size.width, 0, size.width, radius);

    // Right edge slanted down
    path.lineTo(size.width, size.height - slant - radius);
    path.quadraticBezierTo(
      size.width,
      size.height - slant,
      size.width - radius,
      size.height - slant,
    );

    // Bottom edge to bottom-left with curve
    path.lineTo(radius, size.height);
    path.quadraticBezierTo(0, size.height, 0, size.height - radius);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
