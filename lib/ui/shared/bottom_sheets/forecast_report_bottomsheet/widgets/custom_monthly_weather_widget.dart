import 'package:flutter/material.dart';
import 'package:weather_test/Utilities/constants/app_strings.dart';
import 'package:weather_test/Utilities/constants/colors.dart';
import 'package:weather_test/Utilities/constants/ui_helpers.dart';
import 'package:weather_test/ui/shared/bottom_sheets/forecast_report_bottomsheet/widgets/custom_weather_row_tile.dart';

class CustomMonthlyWeatherWidget extends StatelessWidget {
  const CustomMonthlyWeatherWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: UIHelper.height247(context),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.borderColor,
          width: UIHelper.borderwidth(context),
        ),
        color: AppColors.whiteColor.withOpacity(0.05),
        borderRadius: BorderRadius.all(
          Radius.circular(
            UIHelper.width16(context),
          ),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(
          UIHelper.width4(context),
          UIHelper.height10(context),
          UIHelper.width4(context),
          0,
        ),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const WeatherRowTile(
                monthDay: monthDay5,
                temperature: temperature28,
              ),
              Divider(
                color: AppColors.borderColor,
                thickness: UIHelper.borderwidth(context),
              ),
              const WeatherRowTile(
                monthDay: monthDay6,
                temperature: temperature28,
              ),
              Divider(
                color: AppColors.borderColor,
                thickness: UIHelper.borderwidth(context),
              ),
              const WeatherRowTile(
                monthDay: monthDay7,
                temperature: temperature28,
              ),
              Divider(
                color: AppColors.borderColor,
                thickness: UIHelper.borderwidth(context),
              ),
              const WeatherRowTile(
                monthDay: monthDay8,
                temperature: temperature28,
              ),
              Divider(
                color: AppColors.borderColor,
                thickness: UIHelper.borderwidth(context),
              ),
              const WeatherRowTile(
                monthDay: monthDay9,
                temperature: temperature28,
              ),
              Divider(
                color: AppColors.borderColor,
                thickness: UIHelper.borderwidth(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
