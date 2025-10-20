import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:dalel/features/on_boarding/data/models/on_boarding_model.dart';
import 'package:dalel/features/on_boarding/presentation/views/widgets/custom_smooth_page_indicator.dart';
import 'package:flutter/widgets.dart';

class OnBoradingWidgetBody extends StatelessWidget {
  const OnBoradingWidgetBody({
    super.key,
    required this.controller,
    this.onPageChanged,
  });

  final PageController controller;
  final Function(int)? onPageChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: PageView.builder(
        onPageChanged: onPageChanged,
        physics: BouncingScrollPhysics(),
        controller: controller,
        itemCount: onBoardingData.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                width: 343,
                height: 290,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      onBoardingData[index].imagePath,
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(height: 20),
              CustomSmoothPageIndicator(
                controller: controller,
              ),
              SizedBox(height: 30),
              Text(
                onBoardingData[index].title,
                textAlign: TextAlign.center,
                style: AppTextStyels.poppins500style24
                    .copyWith(fontWeight: FontWeight.bold),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 24),
              Text(
                onBoardingData[index].subTitle,
                style: AppTextStyels.poppins300style16,
                textAlign: TextAlign.center,
              ),
            ],
          );
        },
      ),
    );
  }
}
