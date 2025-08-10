import 'package:flutter/material.dart';
import 'product_image.dart';
import 'discount_label.dart';

/// Content widget that displays the product image and discount text
class BannerContent extends StatelessWidget {
  const BannerContent({
    super.key,
    required this.imageAsset,
    required this.discountText,
    required this.imageHeight,
  });

  final String imageAsset;
  final String discountText;
  final double imageHeight;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ProductImage(
          imageAsset: imageAsset,
          height: imageHeight,
        ),
        DiscountLabel(discountText: discountText),
      ],
    );
  }
}
