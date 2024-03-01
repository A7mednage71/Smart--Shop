import 'package:flutter/material.dart';
import 'package:smartshop/core/utils/themedata/App_colors.dart';

class Themedata {
  static themedata({required bool isDark, required BuildContext context}) {
    return ThemeData(
      scaffoldBackgroundColor:
          isDark ? AppColor.darkScaffoldColor : AppColor.lightScaffoldcolor,
      cardColor: isDark ? AppColor.darkCardColor : AppColor.lightCardColor,
      brightness: isDark ? Brightness.dark : Brightness.light,
    );
  }
}
