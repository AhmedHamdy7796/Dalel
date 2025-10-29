import 'package:dalel/core/functions/cutsom_toast_masseges.dart';
import 'package:dalel/core/functions/navigation.dart';
import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/widgets/custom_button.dart';
import 'package:dalel/features/auth/presentation/auth_cubit/cubit/auth_cubit.dart';
import 'package:dalel/features/auth/presentation/auth_cubit/cubit/auth_state.dart';
import 'package:dalel/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:dalel/features/auth/presentation/widgets/terms_and_condition.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSignUpForm extends StatelessWidget {
  const CustomSignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is SignUpSuccessState) {
          showToast("Account created successfully");
          customRepalacementNavigate(context, "/home");
        } else if (state is SignUpFailuerState) {
          showToast(state.errorMessage);
        }
      },
      builder: (context, state) {
        AuthCubit authCubit = BlocProvider.of<AuthCubit>(
          context,
        );
        return Form(
          key: authCubit.signUpFormKey,
          child: Column(
            children: [
              CustomTextFormFeild(
                labelText: AppStrings.fristName,
                onChanged: (firstName) {
                  authCubit.firstName = firstName;
                },
              ),
              CustomTextFormFeild(
                labelText: AppStrings.lastName,
                onChanged: (lastName) {
                  authCubit.lastName = lastName;
                },
              ),
              CustomTextFormFeild(
                labelText: AppStrings.emailAddress,
                onChanged: (emailAddress) {
                  authCubit.emailAddress = emailAddress;
                },
              ),
              CustomTextFormFeild(
                labelText: AppStrings.password,
                suffixIcon: IconButton(
                  icon: Icon(
                    authCubit.obscurePasswordTextValue == true
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                  ),
                  onPressed: () {
                    authCubit.obscurePasswordText();
                  },
                ),
                obscureText: authCubit.obscurePasswordTextValue,
                onChanged: (password) {
                  authCubit.password = password;
                },
              ),
              TermsAndConditionsWidget(),
              SizedBox(height: 88),
              state is SignUpLoadingState
                  ? CircularProgressIndicator(
                      color: AppColors.primaryColor,
                    )
                  : CustomButton(
                      color:
                          authCubit
                                  .termAndConditionCheckBoxValue ==
                              false
                          ? AppColors.grey
                          : null,
                      text: AppStrings.signUp,
                      onPressed: () {
                        if (authCubit
                                .termAndConditionCheckBoxValue ==
                            true) {
                          if (authCubit
                              .signUpFormKey
                              .currentState!
                              .validate()) {
                            BlocProvider.of<AuthCubit>(
                              context,
                            ).signUpWithEmailAndPassword();
                          }
                        }
                      },
                    ),
              SizedBox(height: 16),
            ],
          ),
        );
      },
    );
  }
}
