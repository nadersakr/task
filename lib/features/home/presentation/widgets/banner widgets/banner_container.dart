import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:task/core/constants/app_colors.dart';
import 'banner_constants.dart';
import 'slanted_banner_clipper.dart';

/// Container widget that provides the glass morphism effect for the banner
class BannerContainer extends StatelessWidget {
  const BannerContainer({
    super.key,
    required this.height,
    required this.child,
  });

  final double height;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        gradient: _createGradient(),
        borderRadius: BorderRadius.circular(BannerConstants.borderRadius),
      ),
      child: Padding(
        padding: const EdgeInsets.all(BannerConstants.borderThickness),
        child: ClipPath(
          clipper: SlantedBannerClipper(),
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: BannerConstants.blurSigma,
              sigmaY: BannerConstants.blurSigma,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.tertiary.withAlpha(170),
                borderRadius: BorderRadius.circular(
                  BannerConstants.borderRadius - BannerConstants.borderThickness,
                ),
              ),
              child: child,
            ),
          ),
        ),
      ),
    );
  }

  LinearGradient _createGradient() {
    return LinearGradient(
      colors: [
        Colors.grey.withAlpha(100),
        AppColors.tertiary.withAlpha(150),
        AppColors.tertiary.withAlpha(200),
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    );
  }
}
