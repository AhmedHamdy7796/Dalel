import 'package:dalel/core/functions/navigation.dart';
import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:dalel/core/widgets/custom_button.dart';
import 'package:dalel/features/on_boarding/data/models/on_boarding_model.dart';
import 'package:flutter/widgets.dart';

class GetButtons extends StatelessWidget {
  const GetButtons({
    super.key,
    required this.currentindex,
    required this.controller,
  });

  final int currentindex;
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    if (currentindex == onBoardingData.length - 1) {
      return Column(
        children: [
          SizedBox(height: 16),
          CustomButton(
            text: AppStrings.createAccount,
            onPressed: () {
              // Navigate to create account screen
              customRepalcementNavigate(context, '/signUp');
            },
          ),
          SizedBox(height: 24),
          GestureDetector(
            onTap: () {
              // Navigate to login screen
              customRepalcementNavigate(context, '/login');
            },
            child: Text(
              AppStrings.loginNow,
              style: AppTextStyels.poppins500style18
                  .copyWith(
                    fontWeight: FontWeight.w300,
                    color: AppColors.heavyBlack,
                    decoration: TextDecoration.underline,
                  ),
            ),
          ),
        ],
      );
    } else {
      return CustomButton(
        text: AppStrings.next,
        onPressed: () {
          controller.nextPage(
            duration: Duration(microseconds: 200),
            curve: Curves.bounceIn,
          );
        },
      );
    }
  }
}
