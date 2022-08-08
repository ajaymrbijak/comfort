import 'package:comfort/app/modules/dashboard/bottom_navigation_pages/settings/settings_fetures/privacypolicy/web_url.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../settings_fetures/appname/change_appname.dart';
import '../settings_fetures/rating/rating_dialog.dart';
import 'settings_card_view.dart';
import 'settings_controller.dart';

// ignore: must_be_immutable
class SettingsPage extends GetView<SettingsController> {
  SettingsPage({Key? key}) : super(key: key);
  SettingsController control = SettingsController();
  @override

  //For listtile icon representation
  Widget build(BuildContext context) {
    IconData icontheme = Icons.change_circle;
    IconData appnameedit = Icons.edit;
    IconData changelanguage = Icons.language_rounded;
    IconData privacyicon = Icons.policy;
    IconData ratingicon = Icons.star;

    //For listtile title representation
    String themes = "Change Theme";
    String name = "Change Appname";
    String language = "Change Language";
    String privacy = "PrivacyPolicy";
    String rating = "Rating";

    //final controller = Get.put(SettingsController());

    return SingleChildScrollView(
      child: GetBuilder<SettingsController>(
        builder: (controller) => Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            // Obx(
            //   () => Text(
            //     controller.statustitle.value,
            //     textAlign: TextAlign.center,
            //   ),
            // ),
            const ListTile(
              leading: Icon(
                Icons.chevron_left_sharp,
                size: 35,
                color: Colors.black,
              ),
              title: Text(
                "Settings",
                style: (TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            const CircleAvatar(
              radius: 60,
              backgroundColor: Color.fromARGB(97, 211, 167, 167),
              child: Icon(
                Icons.person,
                size: 50,
              ),
            ),
            const Text(
              'Ajay',
              //     "${getstorage.('id')} ",
              style: TextStyle(
                fontSize: 24,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w700,
                color: Color.fromARGB(255, 6, 6, 6),
              ),
            ),
            const SizedBox(
              height: 22,
            ),

            //List of geatures
            SettingsCard(
              logo: icontheme,
              subject: themes,
              onpress: () {
                controller.isDarkMode.value = !controller.isDarkMode.value;

                controller.changeThemeMode();
              },
              // onpress: web,
            ),
            SettingsCard(
              logo: appnameedit,
              subject: name,
              onpress: () => Get.defaultDialog(
                  barrierDismissible: false,
                  cancel: TextButton(
                    child: const Text("CLOSE"),
                    onPressed: () {
                      Get.back();
                    },
                  ),
                  title: "Change App name",
                  content: Column(
                    children: [
                      Center(
                        child: TextFormField(
                          controller: control.textController,
                          maxLength: 15,
                          decoration: const InputDecoration(
                              icon: Icon(Icons.keyboard),
                              border: OutlineInputBorder(),
                              labelText: 'App name',
                              hintText: 'Enter a pricise name to the app'),
                          keyboardType: TextInputType.text,
                        ),
                      ),
                    ],
                  ),
                  confirm: TextButton(
                    // ignore: prefer_const_constructors
                    child: Text("Submit"),
                    onPressed: () {
                      control.statustitle.value = control.textController.text;
                      Get.back();
                      print(control.statustitle.value);
                    },
                  )),
            ),
            SettingsCard(
                logo: changelanguage, subject: language, onpress: appname),
            SettingsCard(
              logo: privacyicon,
              subject: privacy,
              onpress: openUrl,
            ),
            SettingsCard(
              logo: ratingicon,
              subject: rating,
              onpress: showRatingDialog,
            ),
            Center(
              child: TextButton.icon(
                  onPressed: () {
                    controller.logout();
                    Get.snackbar(
                      "User",
                      "Logout Successfully",
                      snackPosition: SnackPosition.TOP,
                      colorText: Colors.white,
                      backgroundColor: Colors.black,
                    );
                  },
                  icon: const Icon(
                    Icons.logout,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                  label: const Text(
                    "Logout ",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 24,
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

































// List<Map<String,dynamic>>[{
// 'theme':'Icons.change_circle',
// 'tilte':"This is the title1",
// },
// {
// 'theme':'Icons.language_rounded',
// 'tilte':"This is the title2",
// },
// {
// 'theme':'Icons.edit',
// 'tilte':"This is the title3",
// },{
// 'theme':'Icons.policy',
// 'tilte':"This is the title4",
// },
// ]
