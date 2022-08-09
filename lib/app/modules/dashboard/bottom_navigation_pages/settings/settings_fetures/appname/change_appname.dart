import 'package:comfort/app/modules/dashboard/bottom_navigation_pages/settings/settingsview/settings_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangeAppname extends StatelessWidget {
  final SettingsController control = Get.find<SettingsController>();
  ChangeAppname({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: TextFormField(
              controller: control.textController,
              maxLength: 15,
              // onChanged: (value) {

              // },
              decoration: InputDecoration(
                  icon: const Icon(Icons.keyboard),
                  border: const OutlineInputBorder(),
                  labelText: 'textlabeldialoge'.tr,
                  hintText: 'descpdialog'.tr),
              keyboardType: TextInputType.text,
            ),
          ),
          ElevatedButton(
            child: Text('continue'.tr),
            onPressed: () {
              control.statustitle.value = control.textController.text;
            },
          )
        ],
      ),
    );
  }
}

void appname() {
  // ignore: prefer_const_constructors
  ChangeAppname();
}
