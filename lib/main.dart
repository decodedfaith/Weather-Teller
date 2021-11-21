import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:weather_test/Utilities/constants/app_strings.dart';
import 'package:weather_test/app/app.locator.dart';
import 'package:weather_test/app/app.router.dart';
import 'package:weather_test/ui/shared/bottom_sheets/setup_bottom_sheet_ui.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  setupBottomSheetUi();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appName,
      navigatorKey: StackedService.navigatorKey,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      initialRoute: Routes.homeView,
    );
  }
}
