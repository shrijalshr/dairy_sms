import 'package:dairy_sms/common/app_color.dart';
import 'package:dairy_sms/common/app_extensions.dart';
import 'package:dairy_sms/common/style_manager.dart';
import 'package:dairy_sms/view/home_screen.dart';
import 'package:dairy_sms/widgets/my_button.dart';
import 'package:dairy_sms/widgets/my_textfield.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController phoneController;
  late TextEditingController pinController;
  @override
  void initState() {
    // TODO: implement initState
    phoneController = TextEditingController();
    pinController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose

    phoneController.dispose();
    pinController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            physics: const BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  "Login",
                  style: AppStyle.headingStyle(
                      fontSize: 28, color: AppColor.primary),
                ).pb(24),
                MyTextField(
                  label: "Phone Number",
                  textController: phoneController,
                  textInputAction: TextInputAction.next,
                  inputType: TextInputType.phone,
                  validator: (value) {
                    if (value == null || value.isEmpty || value.trim() == "") {
                      return "Please enter your phone number.";
                    }
                    return null;
                  },
                  prefixIcon: const Icon(Icons.phone),
                ).pb(16),
                MyTextField(
                  label: "Pin Code",
                  textController: pinController,
                  textInputAction: TextInputAction.next,
                  inputType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty || value.trim() == "") {
                      return "Please enter your pin number.";
                    }
                    return null;
                  },
                  prefixIcon: const Icon(Icons.numbers_outlined),
                ).pb(24),
                MyButton.primary(
                    label: Text(
                      "Login",
                      style: AppStyle.boldStyle(
                          color: AppColor.white, fontSize: 16),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen()));
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
