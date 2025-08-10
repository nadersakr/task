import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task/core/constants/app_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          right: 0,
          child: SvgPicture.asset(
            SvgStrings.backgroundTriangle,
            width: MediaQuery.of(context).size.width,
          ),
        ),
      ],
    );
  }
}
