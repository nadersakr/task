import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:task/features/home/presentation/screens/home_screen.dart';
import 'package:task/widgets/slanted_vertical_container.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.product});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: VerticalSlantClipper(),
      child: Container(
        color: Colors.blue,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: InkWell(
                  onTap: () {},
                  child: Icon(IconsaxPlusLinear.heart, color: Colors.white),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                height: MediaQuery.of(context).size.height * 0.12,
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset(product.imagePath),
                ),
              ),
              Text(
                product.title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(product.description, style: TextStyle(color: Colors.white)),
              Text('\$${product.price}', style: TextStyle(color: Colors.white)),
            ],
          ),
        ),
      ),
    );
  }
}
