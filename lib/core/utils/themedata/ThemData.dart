import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
        filled: true,
        contentPadding: const EdgeInsets.all(10),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(width: 2, color: Colors.transparent),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide:
              BorderSide(width: 2, color: isDark ? Colors.white : Colors.black),
        ),
      ),
      primaryColor: isDark
          ? const Color.fromARGB(255, 218, 54, 202)
          : const Color(0xffE2E0FF),
      // textTheme: GoogleFonts.redHatTextTextTheme(),
    );
  }
}
