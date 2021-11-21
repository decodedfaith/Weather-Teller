import 'package:flutter/material.dart';
import 'package:weather_test/Utilities/constants/colors.dart';
import 'package:weather_test/Utilities/constants/ui_helpers.dart';

class SmallContainerWidget extends StatelessWidget {
  final String text;
  final IconData? icon;
  final TextStyle? textStyle;
  const SmallContainerWidget({
    Key? key,
    required this.text,
    this.icon,
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: icon == null
          ? MainAxisAlignment.center
          : MainAxisAlignment.spaceAround,
      children: [
        Text(
          text,
          style: textStyle,
        ),
        icon == null
            ? Container()
            : Icon(
                icon,
                color: AppColors.appMainColor,
                size: UIHelper.width21(context),
              ),
      ],
    );
  }
}
