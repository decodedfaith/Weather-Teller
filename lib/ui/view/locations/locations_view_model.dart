import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:weather_test/Utilities/api_handlers/weather_app_api.dart';
import 'package:weather_test/Utilities/constants/app_constants.dart';
import 'package:weather_test/Utilities/enums.dart';
import 'package:weather_test/app/app.locator.dart';
import 'package:weather_test/app/app.logger.dart';
import 'package:weather_test/models/google_autolocation_api_model.dart';
import 'package:weather_test/models/locations_search_models.dart';
import 'package:weather_test/models/weather_data_model.dart';

class LocationsViewModel extends BaseViewModel {
  final _bottomSheetService = locator<BottomSheetService>();

  final _navigationService = locator<NavigationService>();

  final log = getLogger('LocationsViewModel');

  final _apiService = WeatherAppApi(weatherBaseUrl);

  LocationDescription? _searchedCity;

  LocationDescription get searchedCity => _searchedCity!;

  bool get hasSearchedCity => _searchedCity != null;

  WeatherDataModel? _cityWeatherResult;

  WeatherDataModel get cityWeatherResult => _cityWeatherResult!;

  bool get hascityWeatherResult => _cityWeatherResult != null;

  List<bool> isSelected = [true, false];

  bool check = true;

  double? fahrenheitValue;

  changeUnit(status) {
    for (int index = 0; index < isSelected.length; index++) {
      if (index == status) {
        isSelected[index] = true;
        check = true;
      } else {
        isSelected[index] = false;
        check = false;
      }
    }
    if (_cityWeatherResult != null) {
      // fahrenheitConverter();
    }

    notifyListeners();
  }

  void fahrenheitConverter() {
    // double fahrenheitValue;
    if (_cityWeatherResult!.temp != null) {
      fahrenheitValue =
          (1.8 * _cityWeatherResult!.temp!.toInt() + 32).toDouble();
      fahrenheitValue = fahrenheitValue!.round().toDouble();
      log.i('$fahrenheitValue hhhhhhhhhhh');
      log.i('Convertion in progress');
    }
    return;
  }

  navigateBackToHomeView() {
    _navigationService.back();
  }

  Future<void> goToLocationSerchView() async {
    var sheetResponse = await _bottomSheetService.showCustomSheet(
      variant: BottomSheetType.locationSearch,
      isScrollControlled: true,
    );

    log.i('response: ${sheetResponse?.data.state}');
    log.i(
        'rrrrrrrrrrrr_setLocationWeatherCondition..............................');

    if (sheetResponse != null) {
      _searchedCity = sheetResponse.data;
      _setLocationWeatherCondition();
      log.i('_setLocationWeatherCondition..............................');

      notifyListeners();
    }
  }

  void _setLocationWeatherCondition() async {
    final city = _searchedCity!.state;
    final countryId = _searchedCity!.country;
    final endPointParams =
        '$weatherParams$city,$countryId$metricsAppIdParamCall';
    final _cityWeatherApiResult =
        await _apiService.fetchCityWeatherInfo(endPointParams);

    log.i(_cityWeatherApiResult.id.toString());
    log.i(_cityWeatherApiResult.id.toString());
    log.i(_cityWeatherApiResult.id.toString());

    if (_cityWeatherApiResult != null) {
      _cityWeatherResult = _cityWeatherApiResult;
      fahrenheitConverter();
      notifyListeners();
      log.i('${_cityWeatherResult!.temp}');
      log.i('Weather data passed into the UI');
    }
  }
}
