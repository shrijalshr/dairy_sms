import 'package:flutter/material.dart';

class AppColor {
  static const Color primary = Color.fromRGBO(64, 185, 255, 1);
  static const Color darkBlue = Color.fromARGB(255, 11, 6, 56);
  static const Color green1 = Color(0xff44C598);
  static const Color green2 = Color.fromARGB(255, 16, 232, 156);
  static const Color lightGrey = Color.fromARGB(255, 241, 237, 237);
  static const Color textColor = Color.fromARGB(255, 41, 40, 40);
  static const Color grey = Color(0xff737477);
  static const Color darkPrimary = Color.fromARGB(255, 0, 54, 120);
  static const Color orange = Color.fromARGB(255, 255, 187, 40);
  static Color primaryOpacity80 =
      const Color.fromARGB(255, 235, 47, 60).withOpacity(.8);
  static const Color white = Color(0xffFFFFFF);
  static const Color error = Color(0xffe61f34);
  static const Color transparent = Colors.transparent;

  AppColor._();
}

// extension HexColor on Color {
//   static Color fromHex(String hexColorString) {
//     hexColorString = hexColorString.replaceAll("#", "");
//     if (hexColorString.length == 6) {
//       hexColorString = "FF" + hexColorString;
//     }
//     return Color(int.parse(hexColorString, radix: 16));
//   }
// }
