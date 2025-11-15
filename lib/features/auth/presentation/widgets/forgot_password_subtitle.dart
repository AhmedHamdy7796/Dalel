
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class ForgotPasswordSubTitle extends StatelessWidget {
  const ForgotPasswordSubTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 34),
      child: Text(
        'Enter your registered email below to receive password reset instruction',

        style: AppTextStyels.pascifico400style12.copyWith(
          fontSize: 14,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
