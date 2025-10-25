import 'package:dalel/core/database/cash/cash_helper.dart';
import 'package:dalel/core/services/service_locator.dart';

void onBoardingVsisited() {
  getIt<CashHelper>().saveData(
    key: 'isOnBoardingVisited',
    value: true,
  );
}
