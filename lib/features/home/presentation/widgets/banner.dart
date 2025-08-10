import 'package:flutter/material.dart';
import 'package:task/core/constants/app_strings.dart';
import 'banner widgets/banner_constants.dart';
import 'banner widgets/banner_container.dart';
import 'banner widgets/banner_content.dart';
import 'banner widgets/slanted_banner_clipper.dart';

/// A promotional banner widget with a slanted design and glass morphism effect
class PromotionalBanner extends StatelessWidget {
  /// Creates a promotional banner widget
  const PromotionalBanner({
    super.key,
    this.imageAsset = AssetsStrings.bike1,
    this.discountText = '30% Off',
    this.height,
  });

  /// The asset path for the product image
  final String imageAsset;

  /// The discount text to display
  final String discountText;

  /// Optional height override for the banner
  final double? height;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final bannerHeight = height ?? screenHeight * BannerConstants.defaultHeightFactor;

    return ClipPath(
      clipper: SlantedBannerClipper(),
      child: BannerContainer(
        height: bannerHeight,
        child: BannerContent(
          imageAsset: imageAsset,
          discountText: discountText,
          imageHeight: screenHeight * BannerConstants.imageHeightFactor,
        ),
      ),
    );
  }
}
