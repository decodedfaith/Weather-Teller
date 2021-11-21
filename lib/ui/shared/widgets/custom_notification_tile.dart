import 'package:flutter/material.dart';
import 'package:weather_test/Utilities/constants/app_strings.dart';
import 'package:weather_test/Utilities/constants/colors.dart';
import 'package:weather_test/Utilities/constants/text_styles.dart';
import 'package:weather_test/Utilities/constants/ui_helpers.dart';

class CustomNotificationTile extends StatelessWidget {
  final String text1;
  final String text2;
  final bool status;

  const CustomNotificationTile({
    Key? key,
    required this.text1,
    required this.text2,
    required this.status,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: status == false
          ? AppColors.borderColor.withOpacity(0.4)
          : AppColors.whiteColor,
      height: UIHelper.height73(context),
      child: Padding(
        padding: EdgeInsets.fromLTRB(
          UIHelper.width21(context),
          UIHelper.width10(context),
          UIHelper.width18(context),
          UIHelper.width21(context),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Image(
              height: UIHelper.width24(context),
              width: UIHelper.width24(context),
              image: const AssetImage(sunny),
            ),
            SizedBox(
              width: UIHelper.width10(context),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text1,
                  style: AppTextStyles.greyNormalSize10InterFont(context),
                ),
                Text(
                  text2,
                  style: AppTextStyles.blackNormalSize14InterFont(context),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
