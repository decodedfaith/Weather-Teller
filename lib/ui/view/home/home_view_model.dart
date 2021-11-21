import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:weather_test/Utilities/enums.dart';
import 'package:weather_test/app/app.locator.dart';
import 'package:weather_test/app/app.logger.dart';
import 'package:weather_test/app/app.router.dart';

class HomeViewModel extends BaseViewModel {
  final _bottomSheetService = locator<BottomSheetService>();
  final _navigationService = locator<NavigationService>();
  final log = getLogger('HomeViewModel');

  Future<void> goToForecastReport() async {
    var sheetResponse = await _bottomSheetService.showCustomSheet(
      variant: BottomSheetType.forcastReport,
      isScrollControlled: true,
    );
  }

  Future<void> goToNotifications() async {
    var sheetResponse = await _bottomSheetService.showCustomSheet(
      variant: BottomSheetType.notification,
      isScrollControlled: true,
    );
  }

  void navigateToLocationsScreen() {
    _navigationService.navigateTo(Routes.locationsView);
  }
}
