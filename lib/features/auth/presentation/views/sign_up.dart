import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/widgets/custom_button.dart';
import 'package:dalel/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:dalel/features/auth/presentation/widgets/have_account_widget.dart';
import 'package:dalel/features/auth/presentation/widgets/terms_and_condition.dart';
import 'package:dalel/features/auth/presentation/widgets/welcome_text_widget.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: SizedBox(height: 152),
            ),
            SliverToBoxAdapter(
              child: WelcomeTextWidget(
                text: AppStrings.welcome,
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 16)),
            SliverToBoxAdapter(
              child: CustomTextFeild(
                labelText: AppStrings.fristName,
              ),
            ),
            SliverToBoxAdapter(
              child: CustomTextFeild(
                labelText: AppStrings.lastName,
              ),
            ),
            SliverToBoxAdapter(
              child: CustomTextFeild(
                labelText: AppStrings.emailAddress,
              ),
            ),
            SliverToBoxAdapter(
              child: CustomTextFeild(
                labelText: AppStrings.password,
              ),
            ),
            SliverToBoxAdapter(
              child: TermsAndConditionsWidget(),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 88)),
            SliverToBoxAdapter(
              child: CustomButton(
                text: AppStrings.signUp,
                onPressed: () {},
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 16)),
            SliverToBoxAdapter(
              child: Center(
                child: HaveAnAccountWidget(
                  text1: AppStrings.alreadyHaveAnAccount,
                  text2: AppStrings.loginNow,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
