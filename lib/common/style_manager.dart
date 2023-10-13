import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_color.dart';
import 'font_manager.dart';

class AppStyle {
  static TextStyle regularStyle({Color? color, double? fontSize}) =>
      GoogleFonts.notoSans(
          textStyle: TextStyle(
        color: color ?? AppColor.textColor,
        fontSize: fontSize ?? 12,
        fontWeight: FontWeightManager.regular,
      ));
  static TextStyle lightStyle({Color? color, double? fontSize}) =>
      GoogleFonts.notoSans(
          textStyle: TextStyle(
        color: color ?? AppColor.textColor,
        fontSize: fontSize ?? 12,
        fontWeight: FontWeightManager.light,
      ));

  static TextStyle boldStyle({Color? color, double? fontSize}) =>
      GoogleFonts.notoSans(
          textStyle: TextStyle(
        color: color ?? AppColor.textColor,
        fontSize: fontSize ?? 12,
        fontWeight: FontWeightManager.bold,
      ));

  static TextStyle semiBold({Color? color, double? fontSize}) =>
      GoogleFonts.notoSans(
          textStyle: TextStyle(
        color: color ?? AppColor.textColor,
        fontSize: fontSize ?? 12,
        fontWeight: FontWeightManager.semiBold,
      ));

  static TextStyle mediumStyle({Color? color, double? fontSize}) =>
      GoogleFonts.notoSans(
          textStyle: TextStyle(
        color: color ?? AppColor.textColor,
        fontSize: fontSize ?? 12,
        fontWeight: FontWeightManager.medium,
      ));

  static TextStyle successRegularStyle({Color? color, double? fontSize}) =>
      GoogleFonts.notoSans(
          textStyle: TextStyle(
        color: color ?? AppColor.green1,
        fontSize: fontSize ?? 12,
        fontWeight: FontWeightManager.regular,
      ));

  static TextStyle successBoldStyle({Color? color, double? fontSize}) =>
      GoogleFonts.notoSans(
          textStyle: TextStyle(
        color: color ?? AppColor.green1,
        fontSize: fontSize ?? 12,
        fontWeight: FontWeightManager.bold,
      ));

  static TextStyle errorRegularStyle({Color? color, double? fontSize}) =>
      GoogleFonts.notoSans(
          textStyle: TextStyle(
        color: color ?? AppColor.error,
        fontSize: fontSize ?? 12,
        fontWeight: FontWeightManager.regular,
      ));
  static TextStyle errorBoldStyle({Color? color, double? fontSize}) =>
      GoogleFonts.notoSans(
          textStyle: TextStyle(
        color: color ?? AppColor.error,
        fontSize: fontSize ?? 12,
        fontWeight: FontWeightManager.bold,
      ));

  static TextStyle headingStyle({Color? color, double? fontSize}) =>
      GoogleFonts.notoSans(
          textStyle: TextStyle(
        color: color ?? AppColor.textColor,
        fontSize: fontSize ?? fontSize ?? 16,
        fontWeight: FontWeightManager.bold,
      ));

  static TextStyle subHeadingStyle({Color? color, double? fontSize}) =>
      GoogleFonts.notoSans(
          textStyle: TextStyle(
        color: color ?? AppColor.textColor,
        fontSize: fontSize ?? 14,
        fontWeight: FontWeightManager.semiBold,
      ));
  static TextStyle subLightStyle({Color? color, double? fontSize}) =>
      GoogleFonts.notoSans(
          textStyle: TextStyle(
        color: color ?? AppColor.textColor,
        fontSize: fontSize ?? 10,
        fontWeight: FontWeightManager.light,
      ));

  static TextStyle subRegularStyle({Color? color, double? fontSize}) =>
      GoogleFonts.notoSans(
          textStyle: TextStyle(
        color: color ?? AppColor.textColor,
        fontSize: fontSize ?? 10,
        fontWeight: FontWeightManager.regular,
      ));
  static TextStyle subBoldStyle({Color? color, double? fontSize}) =>
      GoogleFonts.notoSans(
          textStyle: TextStyle(
        color: color ?? AppColor.textColor,
        fontSize: fontSize ?? 10,
        fontWeight: FontWeightManager.bold,
      ));
}
