import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:weather_test/app/app.locator.dart';

class NotificationBottomSheetViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  // final log = getLogger('LocationsViewModel');

  navigateBackToHomeView() {
    _navigationService.back();
  }
}