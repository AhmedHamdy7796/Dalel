import 'package:dalel/core/routes/app_router.dart';
<<<<<<< Updated upstream
=======
import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/services/service_locator.dart';
>>>>>>> Stashed changes
import 'package:flutter/material.dart';

void main() {
  runApp(const Dalel());
}

class Dalel extends StatelessWidget {
  const Dalel({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
<<<<<<< Updated upstream
=======
      theme: ThemeData(scaffoldBackgroundColor: AppColors.offWhite),
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.offWhite,
      ),
>>>>>>> Stashed changes
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
