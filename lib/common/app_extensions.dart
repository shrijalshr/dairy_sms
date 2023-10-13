// ignore_for_file: non_constant_identifier_names

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

extension SizeExtension on num {
  double get fw => this / 100 * ScreenUtil().screenWidth;
  double get fh => this / 100 * ScreenUtil().screenHeight;
}

extension PaddingExtension on Widget {
  Widget pa(double a) {
    return Padding(
      padding: EdgeInsets.all(a),
      child: this,
    );
  }

  Widget p([double lp = 0, double rp = 0, double tp = 0, double bp = 0]) {
    return Padding(
      padding: EdgeInsets.only(left: lp, right: rp, top: tp, bottom: bp),
      child: this,
    );
  }

  Widget pt([double top = 0]) {
    return Padding(
      padding: EdgeInsets.only(top: top),
      child: this,
    );
  }

  Widget pb([double bottom = 0]) {
    return Padding(
      padding: EdgeInsets.only(bottom: bottom),
      child: this,
    );
  }

  Widget pl([double left = 0]) {
    return Padding(
      padding: EdgeInsets.only(left: left),
      child: this,
    );
  }

  Widget pr([double right = 0]) {
    return Padding(
      padding: EdgeInsets.only(right: right),
      child: this,
    );
  }

  Widget pv([double vertical = 0]) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: vertical),
      child: this,
    );
  }

  Widget ph([double horizontal = 0]) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontal),
      child: this,
    );
  }
}

extension ExtendedText on Widget {
  addContainer() {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.all(16),
      color: Colors.yellow,
      child: this,
    );
  }
}

extension PasswordValidation on String {
  bool isPasswordValid() {
    if (length < 8) return false;
    if (!contains(RegExp(r"[a-z]"))) return false;
    if (!contains(RegExp(r"[A-Z]"))) return false;
    if (!contains(RegExp(r"[0-9]"))) return false;
    if (!contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) return false;
    return true;
  }
}

extension MobileValidation on String {
  ///[isMobileNum] returns true if given string is a valid mobile number.
  /// Mobile number should start with 97 or 98 and its length should be exactly 10.

  bool isMobileNum() {
    if (length != 10) return false;
    if (startsWith('98') || startsWith('97')) return true;
    return false;
  }
}

extension EmailValidation on String {
  ///[isEmail] returns true if given string is a valid email address.
  bool isEmail() {
    RegExp emailReg = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    bool isValid = emailReg.hasMatch(this);
    return isValid;
  }
}

extension NumberValidation on String {
  //TODO: Add isNaN method later
}

extension TypeConverter on String {
  int? toInt() => int.tryParse(this);
  double? toDouble() => double.tryParse(this);
}

extension DateFormatter on DateTime? {
  YYYYMDD() {
    DateTime date2 = this ?? DateTime.now();
    final format = DateFormat.yMMMEd();
    final formattedDate = format.format(date2);
    return formattedDate;
  }

  YYYYMMDD() {
    DateTime date2 = this ?? DateTime.now();
    final format = DateFormat("yyyy-MM-dd");
    final formattedDate = format.format(date2);
    return formattedDate;
  }

  ///[YYYYMMDDNS] refers to 2000-12-12 as 20001212. NS = NO SEPARATOR
  String YYYYMMDDNS() {
    DateTime date2 = this ?? DateTime.now();
    final format = DateFormat("yyyyMMdd");
    final formattedDate = format.format(date2);
    return formattedDate;
  }

  DDMMMYYYYAtmmhh() {
    DateTime date2 = this ?? DateTime.now();
    final format = DateFormat("dd MMM yyyy 'at' hh:mm a");
    final formattedDate =
        format.format(date2).replaceFirst('AM', 'am').replaceFirst('PM', 'pm');
    return formattedDate;
  }
}

extension IntDateFormatter on int {
  String toFormattedDateWithSS() {
    String dateStr = toString();
    if (dateStr.length != 8) {
      throw Exception("Invalid date format");
    }
    return "${dateStr.substring(0, 4)}-${dateStr.substring(4, 6)}-${dateStr.substring(6)}";
  }
}

extension MakeFive on double {
  double makeFive() {
    double numInt = toDouble();
    try {
      double mod = numInt % 5;
      if (mod == 0) {
        return numInt;
      } else {
        int roundLogic = 3; // replace with your desired value
        return (numInt - mod) + (mod >= roundLogic ? 5 : 0);
      }
    } catch (e) {
      return 0;
    }
  }
}

extension EnumName on Enum {
  String get name => describeEnum(this);
}
