import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_test/Utilities/constants/colors.dart';
import 'package:weather_test/Utilities/constants/ui_helpers.dart';

class AppTextStyles {
  //fontweights
  static const FontWeight _normalWeight = FontWeight.w400;
  static const FontWeight _normalWeightw500 = FontWeight.w500;
    static const FontWeight _semiBoldWeight = FontWeight.w600;
  static const FontWeight _boldWeight = FontWeight.w700;

  //?Text Styles go below
  //colorSizeFontWeight Textstyles
  static TextStyle greyNormalSize10InterFont(BuildContext context) {
    return _baseWithInterfont(
      UIHelper.width10(context),
      _normalWeight,
      AppColors.greyColor,
    );
  }

  static TextStyle whiteNormalSize11InterFont(BuildContext context) {
    return _baseWithInterfont(
      UIHelper.width11(context),
      _semiBoldWeight,
      AppColors.whiteColor,
    );
  }

  static TextStyle whiteNormalSize12(BuildContext context) {
    return _base(
      UIHelper.width12(context),
      _normalWeightw500,
      AppColors.whiteColor,
    );
  }

  static TextStyle blackNormalSize13(BuildContext context) {
    return _base(
      UIHelper.width13(context),
      _normalWeight,
      AppColors.blackColor,
    );
  }

  static TextStyle whiteNormalSize14(BuildContext context) {
    return _base(
      UIHelper.width14(context),
      _normalWeight,
      AppColors.whiteColor,
    );
  }
  

  static TextStyle blackNormalSize14InterFont(BuildContext context) {
    return _baseWithInterfont(
      UIHelper.width14(context),
      _normalWeight,
      AppColors.blackColor,
    );
  }

  static TextStyle appMainColorNormalSize14(BuildContext context) {
    return _base(
      UIHelper.width14(context),
      _normalWeight,
      AppColors.appMainColor,
    );
  }

  static TextStyle whiteNormalSize16(BuildContext context) {
    return _base(
      UIHelper.width16(context),
      _normalWeight,
      AppColors.whiteColor,
    );
  }

  static TextStyle blackNormalSize16(BuildContext context) {
    return _base(
      UIHelper.width16(context),
      _normalWeight,
      AppColors.blackColor,
    );
  }

  static TextStyle whiteNormalSize18InterFont(BuildContext context) {
    return _baseWithInterfont(
      UIHelper.width18(context),
      _semiBoldWeight,
      AppColors.whiteColor,
    );
  }

  static TextStyle whiteNormalSize19(BuildContext context) {
    return _base(
      UIHelper.width19(context),
      _normalWeight,
      AppColors.whiteColor,
    );
  }

  static TextStyle blackBoldSize22(BuildContext context) {
    return _base(
      UIHelper.width22(context),
      _boldWeight,
      AppColors.blackColor,
    );
  }

  static TextStyle whiteNormalSize24(BuildContext context) {
    return _base(
      UIHelper.width24(context),
      _normalWeightw500,
      AppColors.whiteColor,
    );
  }

  static TextStyle whiteNormalSize154(BuildContext context) {
    return _base(
      UIHelper.width154(context),
      _normalWeightw500,
      AppColors.whiteColor,
    );
  }

  //#base style
  static TextStyle _base(
    double size,
    FontWeight? fontWeight,
    Color? color,
  ) {
    return baseStyle(fontSize: size, fontWeight: fontWeight, color: color);
  }

  static TextStyle _baseWithInterfont(
    double size,
    FontWeight? fontWeight,
    Color? color,
  ) {
    return baseStyleWithInterFont(fontSize: size, fontWeight: fontWeight, color: color);
  }

  static TextStyle baseStyle({
    double fontSize = 13,
    FontWeight? fontWeight,
    Color? color,
  }) {
    return GoogleFonts.dmSans(
      fontSize: fontSize,
      fontWeight: fontWeight ?? FontWeight.w500,
      color: color ?? Colors.black87,
    );
  }

  static TextStyle baseStyleWithInterFont({
    double fontSize = 13,
    FontWeight? fontWeight,
    Color? color,
  }) {
    return GoogleFonts.inter(
      fontSize: fontSize,
      fontWeight: fontWeight ?? FontWeight.w500,
      color: color ?? Colors.black87,
    );
  }

  static TextStyle _custom(
    double size,
    FontWeight? fontWeight,
  ) {
    return GoogleFonts.dmSans(fontSize: size, fontWeight: fontWeight);
  }
}
