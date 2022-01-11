import 'package:weather_test/models/country_of_searched_city_model.dart';

class CitySearched {
  CitySearched({
    this.name,
    this.country,
  });
  String? name;
  Country? country;

  factory CitySearched.fromJson(Map<String, dynamic> json) =>
  CitySearched(
    name: json['name'],
    country: Country.fromJson(json['country']),
  );
}

class CitySearchedt {
  CitySearchedt({
    this.name,
    this.country,
  });
  String? name;
  Country? country;

  factory CitySearchedt.fromJson(Map<String, dynamic> json) =>
  CitySearchedt(
    name: json['name'],
    country: Country.fromJson(json['country']),
  );
}
