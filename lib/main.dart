import 'package:dalel/app/dalel_app.dart';
import 'package:dalel/core/database/cash/cash_helper.dart';
import 'package:dalel/core/functions/check_state_changes.dart';
import 'package:dalel/core/services/service_locator.dart';
import 'package:dalel/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  setupServicesLocator();
  await getIt<CashHelper>().init();
  checkStateChanges();
  runApp(const Dalel());
}


