import 'package:flutter/material.dart';
import 'package:weather_test/Utilities/constants/app_strings.dart';
import 'package:weather_test/Utilities/constants/colors.dart';
import 'package:weather_test/Utilities/constants/ui_helpers.dart';
import 'package:weather_test/ui/shared/bottom_sheets/forecast_report_bottomsheet/widgets/custom_weather_column_tile.dart';

class CustomWeatherWidget extends StatelessWidget {
  const CustomWeatherWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.borderColor,
          width: UIHelper.borderwidth(context),
        ),
        color: AppColors.whiteColor.withOpacity(0.05),
        borderRadius: BorderRadius.all(
          Radius.circular(
            UIHelper.width12(context),
          ),
        ),
      ),
      height: UIHelper.height106(context),
      child: Padding(
        padding: EdgeInsets.all(
          UIHelper.width14(context),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            WeatherColumnTile(
              temperature: temperature29,
              time: time8am,
              weatherIcon: sunRise,
            ),
            WeatherColumnTile(
              temperature: temperature29,
              time: time10am,
              weatherIcon: sunRise,
            ),
            WeatherColumnTile(
                temperature: temperature29,
                time: time12am,
                weatherIcon: sunSet),
            WeatherColumnTile(
              temperature: temperature28,
              time: time2pm,
              weatherIcon: sunSet,
            ),
            WeatherColumnTile(
              temperature: temperature28,
              time: time4pm,
              weatherIcon: sunSet,
            ),
          ],
        ),
      ),
    );
  }
}
