import 'package:dairy_sms/common/app_extensions.dart';
import 'package:dairy_sms/controller/home_controller.dart';
import 'package:dairy_sms/model/center_model/center_model.dart';
import 'package:dairy_sms/widgets/my_button.dart';
import 'package:dairy_sms/widgets/my_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../common/app_color.dart';
import '../common/style_manager.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  HomeController controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dairy SMS"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        physics: const BouncingScrollPhysics(),
        child: Column(children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 4,
                child: MyDropDown<CenterModel?>(
                  items: controller.centers
                      .map((e) =>
                          DropdownMenuItem(value: e, child: Text(e.name)))
                      .toList(),
                  hintText: "Select Center",
                  value: controller.selectedCenter.value,
                  onChanged: (CenterModel? c) {
                    controller.onCenterSelect(c);
                  },
                ).pr(12),
              ),
              Expanded(
                flex: 2,
                child: SizedBox(
                  height: 50,
                  child: TextButton(
                    onPressed: () {
                      controller.onDatePick(context);
                    },
                    style: TextButton.styleFrom(
                        side: const BorderSide(color: AppColor.grey),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4))),
                    child: Obx(
                      () => Text(
                        controller.selectedDate.value.YYYYMMDD(),
                        style: AppStyle.boldStyle(),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ).pb(24),
          MyDropDown<Session?>(
              validator: (value) {
                if (value == null) {
                  return "Please select session";
                }
                return null;
              },
              items: [Session.Morning, Session.Evening]
                  .map((e) =>
                      DropdownMenuItem<Session>(value: e, child: Text(e.name)))
                  .toList(),
              hintText: "Select Session",
              value: controller.selectedSession.value,
              onChanged: (Session? s) {
                print(s);
                controller.onSessionSelect(s);
              }).pb(24),
          MyButton.primary(
            onPressed: () {
              controller.loadData();
            },
            label: Text(
              "Load Data",
              style: AppStyle.boldStyle(fontSize: 16, color: AppColor.white),
            ),
          )
        ]),
      ),
    );
  }
}
