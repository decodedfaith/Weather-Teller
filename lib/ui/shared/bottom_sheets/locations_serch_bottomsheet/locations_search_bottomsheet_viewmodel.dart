// import 'package:dio/dio.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:weather_test/Utilities/api_handlers/weather_app_api.dart';
import 'package:weather_test/Utilities/constants/app_constants.dart';
import 'package:weather_test/app/app.locator.dart';
import 'package:weather_test/app/app.logger.dart';
import 'package:weather_test/credentials.dart';
import 'package:weather_test/models/google_autolocation_api_model.dart';
import 'package:weather_test/models/locations_search_models.dart';
import 'package:weather_test/ui/shared/bottom_sheets/locations_serch_bottomsheet/locations_search_bottomsheet_view.form.dart';

class LocationSearchBottomSheetViewModel extends FormViewModel {
  final _navigationService = locator<NavigationService>();

  final _apiService = WeatherAppApi(locationBaseUrl);

  final log = getLogger('LocationSearchBottomSheetViewModel');

  // final _placesService = locator<PlacesService>();

  List<LocationDescription> _autoCompleteResults = [];

  List<LocationDescription> get autoCompleteResults =>
      _autoCompleteResults;

  bool get hasAutoCompleteResults => _autoCompleteResults.isNotEmpty;

  List<CitySearched> _locationsAutoCompleteResults = [];

  List get locationsAutoCompleteResults => _locationsAutoCompleteResults;

  bool get hasLocationsautocompleteResults =>
      _locationsAutoCompleteResults.isNotEmpty;

  @override
  void setFormStatus() {
    // _getLocationAutoCompleteResult();
    _getAutoCompleteResults();
  }

  // Future<void> runStartupLogic() async {
  //   _placesService.initialize(apiKey: googleLocationApiKey);
  // }

  void navigateToLocationSearchView() {
    _navigationService.back();
    locationBaseUrl;
  }

  void _getLocationAutoCompleteResult() async {
    if (locationSearchValue == null || locationSearchValue!.length < 2) {
      return;
    }

    final citiesResult = await _apiService
        .fetchListOfSearchedCities(optionalParams + locationSearchValue!);
    log.i(citiesResult);

    if (citiesResult.isNotEmpty) {
      _locationsAutoCompleteResults = citiesResult;
      notifyListeners();
    }
  }

  void _getAutoCompleteResults() async{
    
    if (locationSearchValue == null || locationSearchValue!.length < 2) {
      return;
    }

    final citiesResult = await _apiService
        .rfetchListOfSearchedCities(locationSearchValue!);
    log.i(citiesResult);

    if (citiesResult != null) {
      _autoCompleteResults = citiesResult;
      notifyListeners();
    }
  }

  // Future<void> _getAutoCompleteResults() async {
  //   if (locationSearchValue != null) {
  //     final placeResults =
  //         await _placesService.getAutoComplete(locationSearchValue!);

  //     if (placeResults != null) {
  //       _autoCompleteResults = placeResults;
  //     }
  //   }
  // }
}
