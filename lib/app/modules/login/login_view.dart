import 'package:comfort/app/modules/dashboard/bottom_navigation_pages/settings/settingsview/settings_controller.dart';
import 'package:comfort/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  //final nameController = Get.find<SettingsController>();
  static SettingsController nameController = SettingsController();
  @override
  Widget build(Object context) {
    return Scaffold(
      appBar: AppBar(
        // title: Obx(() => Text(nameController.statustitle.value)),
        title: const Text('Comfort'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(
            Icons.account_circle_rounded,
            size: 80,
          ),
          // ignore: prefer_const_constructors
          Padding(
            padding: const EdgeInsets.only(top: 82.0),
            child: Text('mobileindication'.tr,
                style: const TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0), fontSize: 23.0)),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 17, 34, 56),
            child: Center(
              child: TextFormField(
                controller: controller.textController,
                maxLength: 10,
                onChanged: (value) {
                  controller.number.value = value;
                },
                decoration: InputDecoration(
                    icon: const Icon(Icons.keyboard),
                    border: const OutlineInputBorder(),
                    labelText: 'mobile'.tr,
                    hintText: 'mobiledes'.tr),
                keyboardType: TextInputType.number,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton.icon(
                  onPressed: () {
                    controller.back();
                  },
                  icon: const Icon(Icons.close),
                  label: Text(
                    'exit'.tr,
                    style: const TextStyle(
                      fontSize: 34,
                    ),
                  )),
              Obx(
                () => ElevatedButton.icon(
                    onPressed: controller.number.value.length < 10
                        ? null
                        : () {
                            Get.toNamed(Routes.otp);
                            //Get.to(Routes.otp);
                          },
                    icon: const Icon(Icons.login),
                    label: Text(
                      'login'.tr,
                      style: const TextStyle(fontSize: 34),
                    )),
              ),
            ],
          )
        ],
      ),
    );
  }
}
