import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:weather_test/Utilities/constants/app_strings.dart';
import 'package:weather_test/Utilities/constants/colors.dart';
import 'package:weather_test/Utilities/constants/text_styles.dart';
import 'package:weather_test/Utilities/constants/ui_helpers.dart';
import 'package:weather_test/ui/shared/widgets/custom_weather_display_box.dart';
import 'package:weather_test/ui/view/home/home_view_model.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: Container(
          color: AppColors.appMainColor,
          child: SafeArea(
            child: Container(
              padding: UIHelper.bodyPadding(context),
              decoration: const BoxDecoration(
                color: AppColors.appMainColor,
              ),
              child: Column(
                children: [
                  UIHelper.sizedBoxSpace10(context),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          model.navigateToLocationsScreen();
                        },
                        child: Container(
                          height: UIHelper.height43(context),
                          width: UIHelper.width159(context),
                          decoration: BoxDecoration(
                            color: AppColors.whiteColor.withOpacity(0.1),
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                UIHelper.width20(context),
                              ),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const Icon(
                                Icons.location_on,
                                color: AppColors.whiteColor,
                              ),
                              Text(
                                currentLocation,
                                style: AppTextStyles.whiteNormalSize14(context),
                              )
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          await model.goToNotifications();
                        },
                        child: Container(
                          height: UIHelper.width44(context),
                          width: UIHelper.width44(context),
                          decoration: BoxDecoration(
                            color: AppColors.whiteColor.withOpacity(0.1),
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                UIHelper.width10(context),
                              ),
                            ),
                          ),
                          child: const Icon(
                            Icons.notifications,
                            color: AppColors.whiteColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  UIHelper.sizedBoxSpace102(context),
                  const CustomWeatherDisplayBox(),
                  UIHelper.sizedBoxSpace121(context),
                  InkWell(
                    onTap: () async {
                      await model.goToForecastReport();
                    },
                    child: Container(
                      height: UIHelper.height60(context),
                      decoration: BoxDecoration(
                        color: AppColors.lightBluePurpleColor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            UIHelper.width8(context),
                          ),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            forecastReport,
                            style: AppTextStyles.whiteNormalSize18InterFont(
                                context),
                          ),
                          Icon(
                            Icons.keyboard_arrow_up,
                            color: AppColors.whiteColor,
                            size: UIHelper.width21(context),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}
