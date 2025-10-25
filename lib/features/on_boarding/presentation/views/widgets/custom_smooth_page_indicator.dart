import 'package:dalel/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomSmoothPageIndicator extends StatelessWidget {
  const CustomSmoothPageIndicator({
    super.key,
    required this.controller,
  });
  final PageController controller; 
  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      count: 3,
      effect: ExpandingDotsEffect(
        activeDotColor: AppColors.deepBrown,
        dotHeight: 7,
        dotWidth: 10,
      ),
    );
  }
}
