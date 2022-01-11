import 'package:shared_preferences/shared_preferences.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:weather_test/services/app_services/local_storage_services.dart';
import 'package:weather_test/ui/view/home/home_view.dart';
import 'package:weather_test/ui/view/locations/locations_view.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView, initial: true),
    MaterialRoute(page: LocationsView),
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: SnackbarService),

    Presolve(
      classType: SharedPreferenceLocalStorage,
      presolveUsing: SharedPreferences.getInstance,
    ),
    // Presolve(
    //   classType: ConnectivityService,
    //   presolveUsing: ConnectivityService.getInstance,
    // ),
  ],
  logger: StackedLogger(),
)
class AppSetup {
  /** This class has no puporse besides housing the annotation that generates the required functionality **/
}
