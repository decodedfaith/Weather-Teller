import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:weather_test/Utilities/constants/app_strings.dart';
import 'package:weather_test/Utilities/constants/colors.dart';
import 'package:weather_test/Utilities/constants/sizes_helpers.dart';
import 'package:weather_test/Utilities/constants/text_styles.dart';
import 'package:weather_test/Utilities/constants/ui_helpers.dart';
import 'package:weather_test/ui/shared/bottom_sheets/forecast_report_bottomsheet/forecast_report_bottom_sheet_viewmodel.dart';
import 'package:weather_test/ui/shared/bottom_sheets/forecast_report_bottomsheet/widgets/custom_monthly_weather_widget.dart';
import 'package:weather_test/ui/shared/bottom_sheets/forecast_report_bottomsheet/widgets/custom_next_forecast_row_wiget.dart';
import 'package:weather_test/ui/shared/bottom_sheets/forecast_report_bottomsheet/widgets/custom_weather_widget.dart';
import 'package:weather_test/ui/shared/widgets/app_loader.dart';
import 'package:weather_test/ui/shared/widgets/custom_small_container_widget.dart';

class ForecastReportSheet extends StatelessWidget {
  final SheetRequest request;
  final Function(SheetResponse) completer;

  const ForecastReportSheet({
    Key? key,
    required this.request,
    required this.completer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ForecastReportSheetViewModel>.reactive(
      builder: (context, model, child) => model.isBusy
          ? const AppLoader()
          : DraggableScrollableSheet(
              maxChildSize: 0.8,
              initialChildSize: 0.8,
              minChildSize: 0.3,
              builder:
                  (BuildContext context, ScrollController scrollController) {
                // final user = model.userModel;
                return Container(
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(
                        UIHelper.width30(context),
                      ),
                      topRight: Radius.circular(
                        UIHelper.width30(context),
                      ),
                    ),
                  ),
                  height: displayHeight(context) * 0.7672,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: UIHelper.width21(context),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        UIHelper.sizedBoxSpace22(context),
                        Center(
                          child: SizedBox(
                            child: Divider(
                              thickness: UIHelper.width2(context),
                            ),
                            width: UIHelper.width100(context),
                          ),
                        ),
                        UIHelper.sizedBoxSpace19(context),
                        Center(
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppColors.appMainColor.withOpacity(0.1),
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  UIHelper.width20(context),
                                ),
                              ),
                            ),
                            height: UIHelper.height43(context),
                            width: UIHelper.width154(context),
                            child: InkWell(
                              onTap: () {
                                model.navigateBackToHomeView();
                              },
                              child: SmallContainerWidget(
                                text: forecastReport,
                                icon: Icons.keyboard_arrow_down,
                                textStyle:
                                    AppTextStyles.appMainColorNormalSize14(
                                        context),
                                // function: model.navigateBackToHomeView(),
                              ),
                            ),
                          ),
                        ),
                        UIHelper.sizedBoxSpace29(context),
                        Text(
                          day,
                          style: AppTextStyles.blackBoldSize22(context),
                        ),
                        UIHelper.sizedBoxSpace15(context),
                        const CustomWeatherWidget(),
                        UIHelper.sizedBoxSpace37(context),
                        const NextForecastRowWidget(),
                        UIHelper.sizedBoxSpace15(context),
                        const CustomMonthlyWeatherWidget(),
                      ],
                    ),
                  ),
                );
              },
            ),
      viewModelBuilder: () => ForecastReportSheetViewModel(),
    );
  }
}
