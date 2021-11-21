import 'package:flutter/material.dart';
import 'package:weather_test/Utilities/constants/app_strings.dart';
import 'package:weather_test/Utilities/constants/text_styles.dart';
import 'package:weather_test/Utilities/constants/ui_helpers.dart';

class WeatherRowTile extends StatelessWidget {
  final String monthDay;
  final String temperature;
  const WeatherRowTile({
    Key? key,
    required this.monthDay,
    required this.temperature,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          monthDay,
          style: AppTextStyles.blackNormalSize13(context),
        ),
        SizedBox(
          height: UIHelper.height27(context),
          width: UIHelper.width48(context),
          child: const Image(
            fit: BoxFit.fill,
            image: AssetImage(sunAndMoon),
          ),
        ),
        Text(
          temperature,
          style: AppTextStyles.blackNormalSize16(context),
        ),
      ],
    );
  }
}
