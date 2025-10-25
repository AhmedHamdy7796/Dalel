import 'package:dalel/core/database/cash/cash_helper.dart';
import 'package:dalel/core/routes/app_router.dart';
<<<<<<< Updated upstream
import 'package:dalel/core/utils/app_colors.dart';
=======
<<<<<<< Updated upstream
=======
import 'package:dalel/core/services/service_locator.dart';
import 'package:dalel/core/utils/app_colors.dart';
>>>>>>> Stashed changes
>>>>>>> Stashed changes
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupServicesLocator();
  await getIt<CashHelper>().init();
  runApp(const Dalel());
}

class Dalel extends StatelessWidget {
  const Dalel({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
<<<<<<< Updated upstream
      theme: ThemeData(scaffoldBackgroundColor: AppColors.offWhite),
=======
<<<<<<< Updated upstream
=======
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.offWhite,
      ),
>>>>>>> Stashed changes
>>>>>>> Stashed changes
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
