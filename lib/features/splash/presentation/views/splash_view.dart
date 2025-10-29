import 'package:dalel/core/functions/navigation.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:dalel/core/database/cash/cash_helper.dart';
import 'package:dalel/core/services/service_locator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();

    bool isOnBoardingVisited =
        getIt<CashHelper>().getData(
          key: 'isOnBoardingVisited',
        ) ??
        false;

    if (isOnBoardingVisited == true) {
      FirebaseAuth.instance.currentUser == null?
      delayedNavigate(context, '/signUp'):
      delayedNavigate(context, '/home');
    } else {
      delayedNavigate(context, '/onBoarding');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          AppStrings.appName,
          style: AppTextStyels.pascifico400style64,
        ),
      ),
    );
  }

  void delayedNavigate(context, path) {
    Future.delayed(const Duration(seconds: 2), () {
      customRepalacementNavigate(context, path);
    });
  }
}
