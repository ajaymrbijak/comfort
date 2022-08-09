import 'package:comfort/app/modules/dashboard/bottom_navigation_pages/settings/settingsview/settings_controller.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SettingsCard extends StatelessWidget {
  final SettingsController controller = SettingsController();
  final IconData? logo;
  final String? subject;
  final VoidCallback? onpress;
  SettingsCard(
      {Key? key, required this.logo, required this.subject, this.onpress})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Card(
            //  color: Color.fromARGB(255, 0, 0, 0),
            elevation: 6,
            shadowColor: const Color.fromARGB(255, 242, 242, 242),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: ListTile(
              leading: Container(
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 215, 211, 211),
                    borderRadius: BorderRadius.circular(35)),
                height: 33,
                width: 40,
                child:
                    Icon(logo, color: const Color.fromARGB(214, 216, 56, 168)),
              ),
              title: Text(
                subject!,
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 0, 0, 0)),
                // color: Get.theme.textTheme.bodyText1!.color),
              ),
              trailing: const Icon(
                Icons.chevron_right_sharp,
                color: Color.fromARGB(255, 218, 6, 234),
              ),
              onTap: onpress,
            ),
          )
        ],
      ),
    );
  }
}
