import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:weather_test/app/app.locator.dart';
import 'package:weather_test/app/app.logger.dart';

class ForecastReportSheetViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final log = getLogger('LocationsViewModel');

  navigateBackToHomeView() {
    _navigationService.back();
  }

  Future<void> futureToRun() async {}
}
