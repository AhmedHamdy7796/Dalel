import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    delayedNavigate(context);
    super.initState();
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
}

void delayedNavigate(context) {
  Future.delayed(const Duration(seconds: 2), () {
    customRepalacementNavigate(context, '/onBoarding');
  });
}
    bool isOnBoardingVisited =
        getIt<CashHelper>().getData(key: 'isOnBoardingVisited') ??
        false;
    if (isOnBoardingVisited == true) {
      delayedNavigate(context, '/signUp');
    } else {
      delayedNavigate(context, '/onBoarding');
    }
    super.initState();

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }

void delayedNavigate(context, path) {
  Future.delayed(const Duration(seconds: 2), () {
    customRepalacementNavigate(context, path);
  });
}
