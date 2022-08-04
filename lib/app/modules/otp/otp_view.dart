import 'package:comfort/app/modules/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

import 'otp_controller.dart';

class OtpView extends GetView<OtpController> {
  const OtpView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final LoginController loginController = Get.put(LoginController());
    // String? otpvalue;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Otp "),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text("Enter 6 digit Otp Number"),
          Center(
            child: OTPTextField(
              length: 6,
              width: Get.width,
              fieldWidth: 40,
              style: const TextStyle(fontSize: 17),
              textFieldAlignment: MainAxisAlignment.spaceAround,
              fieldStyle: FieldStyle.box,
              onChanged: (value) {
                controller.otpvalue.value = value;
              },
            ),
          ),
          Obx(
            () => ElevatedButton(
                onPressed: controller.otpvalue.value.length < 6
                    ? null
                    : () {
                        // Get.to(Routes.home);
                        controller.login(loginController.number.value);
                      },
                child: const Text(
                  'Verify',
                  style: TextStyle(fontSize: 34),
                )),
          ),
        ],
      ),
    );
  }
}
