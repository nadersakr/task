import 'package:flutter/material.dart';
import 'banner_constants.dart';

/// Custom clipper that creates a slanted bottom edge for the banner
class SlantedBannerClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    const double radius = BannerConstants.borderRadius;
    const double slantHeight = BannerConstants.slantHeight;

    final path = Path();

    // Top-left rounded corner
    path.moveTo(0, radius);
    path.quadraticBezierTo(0, 0, radius, 0);

    // Top edge (horizontal)
    path.lineTo(size.width - radius, 0);
    path.quadraticBezierTo(size.width, 0, size.width, radius);

    // Right edge down (no slant at top)
    path.lineTo(size.width, size.height - slantHeight - radius);
    path.quadraticBezierTo(
      size.width,
      size.height - slantHeight,
      size.width - radius,
      size.height - slantHeight,
    );

    // Slanted bottom edge
    path.lineTo(radius, size.height);
    path.quadraticBezierTo(0, size.height, 0, size.height - radius);

    // Close path
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
