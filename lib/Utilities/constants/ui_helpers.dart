import 'package:flutter/material.dart';
import 'package:weather_test/Utilities/constants/sizes_helpers.dart';

/// Contains useful functions to reduce boilerplate and duplicate code
class UIHelper {
  //vertical space in pixel
  static double height4(context) {
    return displayHeight(context) * 0.0049;
  }

  static double height10(context) {
    return displayHeight(context) * 0.0123;
  }

  static double height15(context) {
    return displayHeight(context) * 0.0184;
  }

  static double height19(context) {
    return displayHeight(context) * 0.0234;
  }

  static double height22(context) {
    return displayHeight(context) * 0.0271;
  }

  static double height27(context) {
    return displayHeight(context) * 0.0332;
  }

  static double height29(context) {
    return displayHeight(context) * 0.0357;
  }

  static double height34(context) {
    return displayHeight(context) * 0.0418;
  }

  static double height37(context) {
    return displayHeight(context) * 0.0455;
  }

  static double height43(context) {
    return displayHeight(context) * 0.0529;
  }

  static double height60(context) {
    return displayHeight(context) * 0.0738;
  }

  static double height65(context) {
    return displayHeight(context) * 0.0800;
  }

  static double height73(context) {
    return displayHeight(context) * 0.0899;
  }

  static double height102(context) {
    return displayHeight(context) * 0.1256;
  }
  
  static double height106(context) {
    return displayHeight(context) * 0.1305;
  }

  static double height121(context) {
    return displayHeight(context) * 0.1490;
  }

  static double height247(context) {
    return displayHeight(context) * 0.3041;
  }

  static double height349(context) {
    return displayHeight(context) * 0.4298;
  }

  //horizontal space in pixel
  static double borderwidth(context) {
    return displayWidth(context) * 0.002;
  }

  static double borderwidth2(context) {
    return displayWidth(context) * 0.0026;
  }

  static double width2(context) {
    return displayWidth(context) * 0.0053;
  }

  static double width4(context) {
    return displayWidth(context) * 0.0106;
  }

  static double width8(context) {
    return displayWidth(context) * 0.0213;
  }

  static double width10(context) {
    return displayWidth(context) * 0.0266;
  }

  static double width11(context) {
    return displayWidth(context) * 0.0293;
  }

  static double width12(context) {
    return displayWidth(context) * 0.032;
  }

  static double width13(context) {
    return displayWidth(context) * 0.0346;
  }

  static double width14(context) {
    return displayWidth(context) * 0.0373;
  }

  static double width15(context) {
    return displayWidth(context) * 0.04;
  }

  static double width16(context) {
    return displayWidth(context) * 0.0426;
  }

  static double width18(context) {
    return displayWidth(context) * 0.048;
  }

  static double width19(context) {
    return displayWidth(context) * 0.0506;
  }

  static double width20(context) {
    return displayWidth(context) * 0.0533;
  }

  static double width21(context) {
    return displayWidth(context) * 0.056;
  }

  static double width22(context) {
    return displayWidth(context) * 0.0586;
  }

  static double width24(context) {
    return displayWidth(context) * 0.064;
  }

  static double width30(context) {
    return displayWidth(context) * 0.08;
  }

  static double width44(context) {
    return displayWidth(context) * 0.1173;
  }

  static double width48(context) {
    return displayWidth(context) * 0.128;
  }

  static double width79(context) {
    return displayWidth(context) * 0.2106;
  }

  static double width100(context) {
    return displayWidth(context) * 0.2666;
  }

  static double width154(context) {
    return displayWidth(context) * 0.4106;
  }

  static double width156(context) {
    return displayWidth(context) * 0.416;
  }

  static double width159(context) {
    return displayWidth(context) * 0.424;
  }

  //vertical space in SizedBox UI widget
  static Widget sizedBoxSpace4(context) {
    return SizedBox(
      height: height4(context),
    );
  }

  static Widget sizedBoxSpace10(context) {
    return SizedBox(
      height: height10(context),
    );
  }

  static Widget sizedBoxSpace15(context) {
    return SizedBox(
      height: height15(context),
    );
  }

  static Widget sizedBoxSpace19(context) {
    return SizedBox(
      height: height19(context),
    );
  }

  static Widget sizedBoxSpace22(context) {
    return SizedBox(
      height: height22(context),
    );
  }

  static Widget sizedBoxSpace29(context) {
    return SizedBox(
      height: height29(context),
    );
  }

  static Widget sizedBoxSpace34(context) {
    return SizedBox(
      height: height34(context),
    );
  }

  static Widget sizedBoxSpace37(context) {
    return SizedBox(
      height: height37(context),
    );
  }

  static Widget sizedBoxSpace102(context) {
    return SizedBox(
      height: height102(context),
    );
  }

  static Widget sizedBoxSpace121(context) {
    return SizedBox(
      height: height121(context),
    );
  }

  //padding
  static EdgeInsets bodyPadding(context) {
    return EdgeInsets.fromLTRB(
      width21(context),
      0,
      width24(context),
      height73(context),
    );
  }
}
