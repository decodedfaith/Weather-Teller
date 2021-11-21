import 'package:stacked/stacked.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:weather_test/Utilities/constants/app_strings.dart';
import 'package:weather_test/Utilities/constants/colors.dart';
import 'package:weather_test/Utilities/constants/sizes_helpers.dart';
import 'package:weather_test/Utilities/constants/text_styles.dart';
import 'package:weather_test/Utilities/constants/ui_helpers.dart';
import 'package:weather_test/ui/shared/bottom_sheets/notification_bottomsheet/notification_bottom_sheet_viewmodel.dart';
import 'package:weather_test/ui/shared/widgets/app_loader.dart';
import 'package:weather_test/ui/shared/widgets/custom_notification_tile.dart';
import 'package:weather_test/ui/shared/widgets/custom_small_container_widget.dart';

class NotificationBottomSheetView extends StatelessWidget {
  final SheetRequest request;
  final Function(SheetResponse) completer;
  const NotificationBottomSheetView({
    Key? key,
    required this.request,
    required this.completer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<NotificationBottomSheetViewModel>.reactive(
      builder: (context, model, child) => model.isBusy
          ? const AppLoader()
          : DraggableScrollableSheet(
              maxChildSize: 0.8,
              initialChildSize: 0.8,
              minChildSize: 0.3,
              builder:
                  (BuildContext context, ScrollController scrollController) {
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
                        child: InkWell(
                          onTap: () {
                            model.navigateBackToHomeView();
                          },
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
                            child: SmallContainerWidget(
                              text: yourNotifications,
                              textStyle: AppTextStyles.appMainColorNormalSize14(
                                  context),
                            ),
                          ),
                        ),
                      ),
                      UIHelper.sizedBoxSpace29(context),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: UIHelper.width21(context),
                        ),
                        child: Text(
                          newNotifications,
                          style:
                              AppTextStyles.greyNormalSize10InterFont(context),
                        ),
                      ),
                      UIHelper.sizedBoxSpace4(context),
                      Column(
                        children: const [
                          CustomNotificationTile(
                            text1: minAgo10,
                            text2: weatherInfo,
                            status: false,
                          ),
                        ],
                      ),
                      UIHelper.sizedBoxSpace22(context),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: UIHelper.width21(context),
                        ),
                        child: Text(
                          earlierNotifications,
                          style:
                              AppTextStyles.greyNormalSize10InterFont(context),
                        ),
                      ),
                      Column(
                        children: [
                          const CustomNotificationTile(
                            text1: daysAgo1,
                            text2: weatherInfo,
                            status: true,
                          ),
                          Divider(
                            color: AppColors.borderColor2,
                            thickness: UIHelper.borderwidth2(context),
                          ),
                          const CustomNotificationTile(
                            text1: daysAgo2,
                            text2: weatherInfo,
                            status: true,
                          ),
                          Divider(
                            color: AppColors.borderColor2,
                            thickness: UIHelper.borderwidth2(context),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
      viewModelBuilder: () => NotificationBottomSheetViewModel(),
    );
  }
}
