import 'package:comfort/app/modules/dashboard/bottom_navigation_pages/settings/settingsview/settings_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangeAppname extends StatelessWidget {
  SettingsController control = Get.find<SettingsController>();
  ChangeAppname({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("App Control")),
      body: Column(
        children: [
          Center(
            child: TextFormField(
              controller: control.textController,
              maxLength: 15,
              // onChanged: (value) {

              // },
              decoration: const InputDecoration(
                  icon: Icon(Icons.keyboard),
                  border: OutlineInputBorder(),
                  labelText: 'App name',
                  hintText: 'Enter a pricise name to the app'),
              keyboardType: TextInputType.text,
            ),
          ),
          ElevatedButton(
            child: Text("Submit"),
            onPressed: () {
              control.statustitle.value = control.textController.value.text;
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
