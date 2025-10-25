<<<<<<< Updated upstream
=======
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/widgets/custom_button.dart';
import 'package:dalel/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:dalel/features/auth/presentation/widgets/terms_and_condition.dart';
import 'package:dalel/features/auth/presentation/widgets/welcome_text_widget.dart';
>>>>>>> Stashed changes
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
<<<<<<< Updated upstream
    return Scaffold();
=======
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
            SliverToBoxAdapter(child: SizedBox(height: 40)),
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
            SliverToBoxAdapter(child: SizedBox(height: 50)),
            SliverToBoxAdapter(
              child: CustomButton(
                text: AppStrings.signUp,
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
>>>>>>> Stashed changes
  }
}
