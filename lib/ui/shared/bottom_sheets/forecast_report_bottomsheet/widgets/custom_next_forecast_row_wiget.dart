import 'package:flutter/material.dart';
import 'package:weather_test/Utilities/constants/app_strings.dart';
import 'package:weather_test/Utilities/constants/colors.dart';
import 'package:weather_test/Utilities/constants/text_styles.dart';
import 'package:weather_test/Utilities/constants/ui_helpers.dart';

class NextForecastRowWidget extends StatelessWidget {
  const NextForecastRowWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          nextForecast,
          style: AppTextStyles.blackBoldSize22(context),
        ),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: AppColors.lightBluePurpleColor,
            borderRadius: BorderRadius.all(
              Radius.circular(
                UIHelper.width8(context),
              ),
            ),
          ),
          height: UIHelper.height37(context),
          width: UIHelper.width100(context),
          child: Text(
            numberOfDays,
            style: AppTextStyles.whiteNormalSize11InterFont(context),
          ),
        ),
      ],
    );
  }
}
