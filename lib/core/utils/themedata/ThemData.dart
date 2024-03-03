import 'package:flutter/material.dart';
import 'package:smartshop/core/utils/themedata/App_colors.dart';

class Themedata {
  static themedata({required bool isDark, required BuildContext context}) {
    return ThemeData(
      scaffoldBackgroundColor:
          isDark ? AppColor.darkScaffoldColor : AppColor.lightScaffoldcolor,
      cardColor: isDark ? AppColor.darkCardColor : AppColor.lightCardColor,
      brightness: isDark ? Brightness.dark : Brightness.light,
      appBarTheme: AppBarTheme(
        backgroundColor:
            isDark ? AppColor.darkScaffoldColor : AppColor.lightScaffoldcolor,
        elevation: 0,
        iconTheme: IconThemeData(color: isDark ? Colors.white : Colors.black),
      ),
      iconTheme: IconThemeData(
          color: isDark ? AppColor.lightCardColor : AppColor.darkCardColor),
    );
  }
}
