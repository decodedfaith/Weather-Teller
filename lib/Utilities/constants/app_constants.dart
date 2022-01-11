import 'package:weather_test/credentials.dart';

const locationBaseUrl = 'https://spott.p.rapidapi.com';
const optionalParams = '/places/autocomplete?limit=7&skip=0&type=CITY&q=';
const weatherBaseUrl = 'https://api.openweathermap.org';
const weatherParams = '/data/2.5/weather?q=';
const weatherIcon = 'http://openweathermap.org/img/wn/';
const metricsAppIdParamCall = '&units=metric&appid=';
const googleLocationBaseUrl =
    'https://maps.googleapis.com/maps/api/place/autocomplete/json';
const googleLocationParams = '?key=$googleLocationApiKey&type=(regions)&input=';