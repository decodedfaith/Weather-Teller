import 'package:flutter/material.dart';
import 'package:weather_test/Utilities/constants/app_strings.dart';
import 'package:weather_test/Utilities/constants/colors.dart';
import 'package:weather_test/Utilities/constants/text_styles.dart';
import 'package:weather_test/Utilities/constants/ui_helpers.dart';

class CustomWeatherDisplayBox extends StatelessWidget {
  final  dynamic  model;
  const CustomWeatherDisplayBox({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: UIHelper.height349(context),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.whiteColor,
          width: UIHelper.borderwidth(context),
        ),
        color: AppColors.whiteColor.withOpacity(0.05),
        borderRadius: BorderRadius.all(
          Radius.circular(
            UIHelper.width15(context),
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                height: UIHelper.height65(context),
                width: UIHelper.width79(context),
                image: const AssetImage(weatherIcon),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    today,
                    style: AppTextStyles.whiteNormalSize24(context),
                  ),
                  Text(
                    date,
                    style: AppTextStyles.whiteNormalSize12(context),
                  ),
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              model.isSelected[0]
                  ? Text(
                      celciusNo,
                      style: AppTextStyles.whiteNormalSize154(context),
                    )
                  : Text(
                      '${model.fahrenheitValue!.toInt()}',
                      style: AppTextStyles.whiteNormalSize154(context),
                    ),
              Column(
                children: [
                  UIHelper.sizedBoxSpace34(context),
                  model.isSelected[0]
                      ? Text(
                          celciusSym,
                          style: AppTextStyles.whiteNormalSize19(context),
                        )
                      : Text(
                          fahrenheitSym,
                          style: AppTextStyles.whiteNormalSize19(context),
                        ),
                ],
              ),
            ],
          ),
          Text(
            locationAndTime,
            style: AppTextStyles.whiteNormalSize16(context),
          )
        ],
      ),
    );
  }
}



// class CustomWeatherDisplayBox extends StatelessWidget {
//   final LocationsViewModel model;
//   const CustomWeatherDisplayBox({
//     Key? key,
//     required this.model,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: UIHelper.height349(context),
//       decoration: BoxDecoration(
//         border: Border.all(
//           color: AppColors.whiteColor,
//           width: UIHelper.borderwidth(context),
//         ),
//         color: AppColors.whiteColor.withOpacity(0.05),
//         borderRadius: BorderRadius.all(
//           Radius.circular(
//             UIHelper.width15(context),
//           ),
//         ),
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Image(
//                 height: UIHelper.height65(context),
//                 width: UIHelper.width79(context),
//                 image: const AssetImage(weatherIcon),
//               ),
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   Text(
//                     today,
//                     style: AppTextStyles.whiteNormalSize24(context),
//                   ),
//                   Text(
//                     date,
//                     style: AppTextStyles.whiteNormalSize12(context),
//                   ),
//                 ],
//               )
//             ],
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               model.isSelected[0]
//                   ? Text(
//                       celciusNo,
//                       style: AppTextStyles.whiteNormalSize154(context),
//                     )
//                   : Text(
//                       '${model.fahrenheitValue!.toInt()}',
//                       style: AppTextStyles.whiteNormalSize154(context),
//                     ),
//               Column(
//                 children: [
//                   UIHelper.sizedBoxSpace34(context),
//                   model.isSelected[0]
//                       ? Text(
//                           celciusSym,
//                           style: AppTextStyles.whiteNormalSize19(context),
//                         )
//                       : Text(
//                           fahrenheitSym,
//                           style: AppTextStyles.whiteNormalSize19(context),
//                         ),
//                 ],
//               ),
//             ],
//           ),
//           Text(
//             locationAndTime,
//             style: AppTextStyles.whiteNormalSize16(context),
//           )
//         ],
//       ),
//     );
//   }
// }
