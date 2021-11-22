import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:weather_test/Utilities/enums.dart';
import 'package:weather_test/app/app.locator.dart';
import 'package:weather_test/app/app.logger.dart';

class LocationsViewModel extends BaseViewModel {
  final _bottomSheetService = locator<BottomSheetService>();
  final _navigationService = locator<NavigationService>();
  final log = getLogger('LocationsViewModel');

  navigateBackToHomeView() {
    _navigationService.back();
  }

  Future<void> goToLocationSerchView() async {
    var sheetResponse = await _bottomSheetService.showCustomSheet(
      variant: BottomSheetType.locationSearch,
      isScrollControlled: true,
    );
  }

}