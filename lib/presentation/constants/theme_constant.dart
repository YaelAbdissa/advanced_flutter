import 'color_constant.dart';
import 'font_constant.dart';
import 'value_constant.dart';
import 'package:flutter/material.dart';

import 'style_constant.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    // main colors of the app
    primaryColor: ColorConstant.primaryColor,
    primaryColorLight: ColorConstant.primaryOpacity70,
    primaryColorDark: ColorConstant.darkPrimary,
    disabledColor: ColorConstant.grey1,

    //ripple color
    splashColor: ColorConstant.primaryOpacity70,

    // card view theme
    cardTheme: CardTheme(
      color: ColorConstant.white,
      shadowColor: ColorConstant.greyColor,
      elevation: AppSize.s4,
    ),

    // App bar theme
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: ColorConstant.primaryColor,
      elevation: AppSize.s4,
      shadowColor: ColorConstant.primaryOpacity70,
      titleTextStyle: getRegularTextStyle(
        color: ColorConstant.white,
        fontSize: FontSizeConstant.size16,
      ),
    ),

    // Button theme
    buttonTheme: ButtonThemeData(
      shape: const StadiumBorder(),
      disabledColor: ColorConstant.grey1,
      buttonColor: ColorConstant.primaryColor,
      splashColor: ColorConstant.primaryOpacity70,
    ),

    //elevated button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: getRegularTextStyle(
          color: ColorConstant.white,
          fontSize: FontSizeConstant.size16,
        ),
        primary: ColorConstant.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s12),
        ),
      ),
    ),

    // Text theme
    textTheme: TextTheme(
      headline1: getSemiBoldTextStyle(
        color: ColorConstant.darkGreyColor,
        fontSize: FontSizeConstant.size16,
      ),
      subtitle1: getMediumTextStyle(
        color: ColorConstant.lightGreyColor,
        fontSize: FontSizeConstant.size14,
      ),
      caption: getRegularTextStyle(
        color: ColorConstant.grey1,
      ),
      bodyText1: getRegularTextStyle(
        color: ColorConstant.greyColor,
      ),
    ),

    // input decoration theme
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(AppPadding.p8),
      hintStyle: getRegularTextStyle(color: ColorConstant.grey1),
      labelStyle: getMediumTextStyle(color: ColorConstant.darkGreyColor),
      errorStyle: getRegularTextStyle(color: ColorConstant.error),
      enabledBorder: OutlineInputBorder(
        borderSide:
            BorderSide(color: ColorConstant.greyColor, width: AppSize.s1_5),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide:
            BorderSide(color: ColorConstant.primaryColor, width: AppSize.s1_5),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorConstant.error, width: AppSize.s1_5),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide:
            BorderSide(color: ColorConstant.primaryColor, width: AppSize.s1_5),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
      ),
    ),
  );
}
