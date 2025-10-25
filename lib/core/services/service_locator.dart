import 'package:dalel/core/database/cash/cash_helper.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setupServicesLocator() {
  // Register your services here
  getIt.registerSingleton<CashHelper>(CashHelper());
}
