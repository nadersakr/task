import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Choose Your Bike', style: Theme.of(context).textTheme.titleLarge),
        const Spacer(),
        SearchWidget(),
      ],
    );
  }
}

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blue.shade300, Colors.blue.shade600],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: IconButton(
        icon: Icon(
          IconsaxPlusLinear.search_normal_1,
          size: 24.0,
          color: Colors.white,
        ),
        onPressed: () {
          // Handle search button press
        },
      ),
    );
  }
}
