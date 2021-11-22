import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:weather_test/Utilities/constants/app_strings.dart';
import 'package:weather_test/Utilities/constants/colors.dart';
import 'package:weather_test/Utilities/constants/text_styles.dart';
import 'package:weather_test/Utilities/constants/ui_helpers.dart';
import 'package:weather_test/ui/shared/widgets/custom_weather_display_box.dart';
import 'package:weather_test/ui/view/locations/locations_view_model.dart';

class LocationsView extends StatelessWidget {
  const LocationsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LocationsViewModel>.reactive(
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          model.navigateBackToHomeView();
                        },
                        child: Icon(
                          Icons.keyboard_arrow_left,
                          color: AppColors.whiteColor,
                          size: UIHelper.width24(context),
                        ),
                      ),
                      SizedBox(
                        width: UIHelper.width11(context),
                      ),
                      InkWell(
                        onTap: () async{
                          await model.goToLocationSerchView();
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
                    ],
                  ),
                  UIHelper.sizedBoxSpace102(context),
                  const CustomWeatherDisplayBox(),
                ],
              ),
            ),
          ),
        ),
      ),
      viewModelBuilder: () => LocationsViewModel(),
    );
  }
}
