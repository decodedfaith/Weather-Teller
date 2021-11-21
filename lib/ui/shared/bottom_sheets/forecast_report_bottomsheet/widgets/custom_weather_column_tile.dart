import 'package:flutter/material.dart';
import 'package:weather_test/Utilities/constants/ui_helpers.dart';

class WeatherColumnTile extends StatelessWidget {
  final String time;
  final String temperature;
  final String weatherIcon;
  const WeatherColumnTile({
    Key? key,
    required this.time,
    required this.temperature,
    required this.weatherIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(temperature),
        Image(
          height: UIHelper.width24(context),
          width: UIHelper.width24(context),
          image: AssetImage(weatherIcon),
        ),
        Text(time),
      ],
    );
  }
}
