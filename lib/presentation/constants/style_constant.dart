import 'font_constant.dart';
import 'package:flutter/material.dart';

TextStyle _getTextStyle(
    double fontSize, String fontFamily, FontWeight fontWeight, Color color) {
  return TextStyle(
    fontSize: fontSize,
    fontFamily: fontFamily,
    color: color,
  );
}

TextStyle getRegularTextStyle(
    {double fontSize = FontSizeConstant.size12, required Color color}) {
  return _getTextStyle(
    fontSize,
    FontFamilyConstant.fontFamily,
    FontWeightConstant.regular,
    color,
  );
}

TextStyle getBoldTextStyle(
    {double fontSize = FontSizeConstant.size12, required Color color}) {
  return _getTextStyle(
    fontSize,
    FontFamilyConstant.fontFamily,
    FontWeightConstant.bold,
    color,
  );
}

TextStyle getSemiBoldTextStyle(
    {double fontSize = FontSizeConstant.size12, required Color color}) {
  return _getTextStyle(
    fontSize,
    FontFamilyConstant.fontFamily,
    FontWeightConstant.semiBold,
    color,
  );
}

TextStyle getLightTextStyle(
    {double fontSize = FontSizeConstant.size12, required Color color}) {
  return _getTextStyle(
    fontSize,
    FontFamilyConstant.fontFamily,
    FontWeightConstant.light,
    color,
  );
}

TextStyle getMediumTextStyle(
    {double fontSize = FontSizeConstant.size12, required Color color}) {
  return _getTextStyle(
    fontSize,
    FontFamilyConstant.fontFamily,
    FontWeightConstant.medium,
    color,
  );
}
