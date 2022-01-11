// class WeatherDataModel {
//   WeatherDataModel({
//     this.coord,
//     this.weather,
//     this.main,
//     this.sys,
//     this.id,
//     this.name,
//     this.cod,
//     this.dt,
//   });
//   Coord? coord;
//   List<Weather>? weather;
//   Main? main;
//   Sys? sys;
//   int? id;
//   String? name;
//   int? cod;
//   int? dt;

//   factory WeatherDataModel.fromJson(Map<String, dynamic> json) {
//     return WeatherDataModel(
//       coord: Coord.fromJson(json['coord']),
//       weather:
//           List.from(json['weather']).map((e) => Weather.fromJson(e)).toList(),
//       main: Main.fromJson(json['main']),
//       sys: Sys.fromJson(json['sys']),
//       id: json['id'],
//       name: json['name'],
//       cod: json['cod'],
//       dt: json['dt'],
//     );
//   }
// }

// class Coord {
//   Coord({
//     this.lon,
//     this.lat,
//   });
//   int? lon;
//   int? lat;

//   factory Coord.fromJson(Map<String, dynamic> json) {
//     return Coord(
//       lon: json['lon'],
//       lat: json['lat'],
//     );
//   }
// }

// class Weather {
//   Weather({
//     this.id,
//     this.main,
//     this.description,
//     this.icon,
//   });
//   int? id;
//   String? main;
//   String? description;
//   String? icon;

//   factory Weather.fromJson(Map<String, dynamic> json) {
//     return Weather(
//       id: json['id'],
//       main: json['main'],
//       description: json['description'],
//       icon: json['icon'],
//     );
//   }
// }

// class Main {
//   Main({
//     this.temp,
//     this.feelsLike,
//     this.tempMin,
//     this.tempMax,
//     this.pressure,
//     this.humidity,
//   });
//   double? temp;
//   double? feelsLike;
//   double? tempMin;
//   double? tempMax;
//   int? pressure;
//   int? humidity;

//   factory Main.fromJson(Map<String, dynamic> json) {
//     return Main(
//       temp: json['temp'],
//       feelsLike: json['feels_like'],
//       tempMin: json['temp_min'],
//       tempMax: json['temp_max'],
//       pressure: json['pressure'],
//       humidity: json['humidity'],
//     );
//   }
// }

// class Sys {
//   Sys({
//     this.type,
//     this.id,
//     this.country,
//     this.sunrise,
//     this.sunset,
//   });
//   int? type;
//   int? id;
//   String? country;
//   int? sunrise;
//   int? sunset;

//   factory Sys.fromJson(Map<String, dynamic> json) {
//     return Sys(
//       type: json['type'],
//       id: json['id'],
//       country: json['country'],
//       sunrise: json['sunrise'],
//       sunset: json['sunset'],
//     );
//   }
// }

class WeatherDataModel {
  final double? temp;
  final double? coodLon;
  final double? coodLat;
  final double? dt;
  final double? id;
  final String? description;
  final String? weatherIcon;

  WeatherDataModel({
    this.temp,
    this.coodLon,
    this.coodLat,
    this.dt,
    this.description,
    this.weatherIcon,
    this.id,
  });

  factory WeatherDataModel.fromJson(Map<String, dynamic> json) {
    return WeatherDataModel(
      temp: json['main']['temp'].toDouble(),
      coodLon: json['coord']['lon'].toDouble(),
      coodLat: json['coord']['lat'].toDouble(),
      dt: json['dt'].toDouble(),
      id: json['id'].toDouble(),
      description: json['weather'][0]['description'],
      weatherIcon: json['weather'][0]['icon'],
    );
  }
}
