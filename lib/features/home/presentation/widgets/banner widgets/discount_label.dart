import 'package:flutter/material.dart';
import 'banner_constants.dart';

/// Widget that displays the discount text
class DiscountLabel extends StatelessWidget {
  const DiscountLabel({
    super.key,
    required this.discountText,
  });

  final String discountText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: BannerConstants.contentPadding,
        bottom: BannerConstants.contentPadding,
      ),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Text(
          discountText,
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Colors.grey[400],
                fontWeight: FontWeight.bold,
              ) ??
              TextStyle(
                color: Colors.grey[400],
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
    );
  }
}
