<<<<<<< Updated upstream
import 'package:dalel/core/functions/navigation.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
=======
<<<<<<< Updated upstream
=======
import 'package:dalel/core/database/cash/cash_helper.dart';
import 'package:dalel/core/functions/navigation.dart';
import 'package:dalel/core/services/service_locator.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
>>>>>>> Stashed changes
>>>>>>> Stashed changes
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
<<<<<<< Updated upstream
=======
<<<<<<< Updated upstream
=======
>>>>>>> Stashed changes
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
<<<<<<< Updated upstream
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
=======
    bool isOnBoardingVisited =
        getIt<CashHelper>().getData(key: 'isOnBoardingVisited') ??
        false;
    if (isOnBoardingVisited == true) {
      delayedNavigate(context, '/signUp');
    } else {
      delayedNavigate(context, '/onBoarding');
    }
    super.initState();
  }

  @override
>>>>>>> Stashed changes
  Widget build(BuildContext context) {
    return const Scaffold();
  }
<<<<<<< Updated upstream
}
=======
}

void delayedNavigate(context, path) {
  Future.delayed(const Duration(seconds: 2), () {
    customRepalacementNavigate(context, path);
  });
}
>>>>>>> Stashed changes
>>>>>>> Stashed changes
