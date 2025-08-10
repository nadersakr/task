import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task/core/constants/app_colors.dart';
import 'package:task/core/constants/app_strings.dart';
import 'package:task/features/home/presentation/widgets/banner.dart';
import 'package:task/features/home/presentation/widgets/home_app_bar.dart';
import 'package:task/features/home/presentation/widgets/tab_container.dart';
import 'package:task/widgets/stari_widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              right: 0,
              child: SvgPicture.asset(
                AssetsStrings.backgroundTriangle,
                width: MediaQuery.of(context).size.width,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: MediaQuery.of(context).padding.top),
                  HomeAppBar(),
                  SizedBox(height: 16.0),
                  PromotionalBanner(),
                  SizedBox(height: 32.0),

                  StairList(
                    spacing: MediaQuery.of(context).size.width * 0.05,
                    children: [
                      TabContiner(
                        isSelected: true,
                        child: Text(
                          'All',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                      TabContiner(
                        isSelected: false,
                        child: SvgPicture.asset(AssetsStrings.iconElectricBox),
                      ),
                      TabContiner(
                        isSelected: false,
                        child: SvgPicture.asset(AssetsStrings.iconRoad),
                      ),
                      TabContiner(
                        isSelected: false,
                        child: SvgPicture.asset(AssetsStrings.iconMountain),
                      ),
                      TabContiner(
                        isSelected: false,
                        child: SvgPicture.asset(AssetsStrings.iconHelmet),
                      ),
                    ],
                  ),

                  // SlantedVerticalContainer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


