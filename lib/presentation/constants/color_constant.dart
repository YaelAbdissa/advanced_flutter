import 'package:flutter/material.dart';

class ColorConstant {
  static Color primaryColor = const Color(0xffed9728);
  static Color darkGreyColor = const Color(0xff525252);
  static Color greyColor = const Color(0xff737477);
  static Color lightGreyColor = const Color(0xff9e9e9e);
  static Color primaryOpacity70 = const Color(0xffED9728).withOpacity(0.7);

  static Color darkPrimary = const Color(0xffd17d11);
  static Color grey1 = const Color(0xff707070);
  static Color grey2 = const Color(0xff797979);
  static Color white = const Color(0xffFFFFFF);
  static Color error = const Color(0xffe61f34);
}

// extension HexColor on Color {
//   static Color fromHex(String hexColorString) {
//     hexColorString = hexColorString.replaceAll('#', '');
//     if (hexColorString.length == 6) {
//       hexColorString = "FF" + hexColorString; // 8 char with opacity 100%
//     }
//     return Color(int.parse(hexColorString, radix: 16));
//   }
// }
