import 'package:flutter/material.dart';
import 'banner_constants.dart';

/// Widget that displays the product image
class ProductImage extends StatelessWidget {
  const ProductImage({
    super.key,
    required this.imageAsset,
    required this.height,
  });

  final String imageAsset;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: BannerConstants.contentPadding),
        child: SizedBox(
          height: height,
          child: Image.asset(
            imageAsset,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
