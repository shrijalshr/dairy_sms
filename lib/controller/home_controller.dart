import 'package:dairy_sms/common/app_extensions.dart';
import 'package:dairy_sms/model/center_model/center_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nepali_date_picker/nepali_date_picker.dart' as picker;
import 'package:nepali_date_picker/nepali_date_picker.dart';

class HomeController extends GetxController {
  Rx<Session?> selectedSession = null.obs;
  Rx<CenterModel?> selectedCenter = null.obs;
  Rx<int?>? sessionID;
  Rx<int?>? centerID;
  Rx<int?>? dateInt;
  Rx<NepaliDateTime> selectedDate = NepaliDateTime.now().obs;

  List<CenterModel> centers = List.generate(
      10, (index) => CenterModel(id: index, name: "index is $index"));

  onCenterSelect(CenterModel? c) {
    selectedCenter.value = c;
    print(c);
  }

  onSessionSelect(Session? s) {
    selectedSession.value = s;
    print(s);
    print(selectedSession.value);
  }

  onDatePick(BuildContext context) async {
    final NepaliDateTime? picked = await picker.showMaterialDatePicker(
      context: context,
      initialDate: NepaliDateTime.now(),
      firstDate: NepaliDateTime(2000),
      lastDate: NepaliDateTime.now(),
      initialDatePickerMode: DatePickerMode.day,
    );
    if (picked != null) selectedDate.value = picked;
    dateInt?.value = int.tryParse(selectedDate.value.YYYYMMDDNS());
  }

  void loadData() {
    Map<String, dynamic> data = {
      'centerId': selectedCenter.value?.id,
      'date': dateInt,
      'session': selectedSession.value?.getInt(),
    };
    print(data);
  }
}

// ignore: constant_identifier_names
enum Session { Morning, Evening }

extension SessionEx on Session {
  int getInt() {
    switch (this) {
      case Session.Morning:
        return 1;
      case Session.Evening:
        return 2;
      default:
        return 0;
    }
  }
}
