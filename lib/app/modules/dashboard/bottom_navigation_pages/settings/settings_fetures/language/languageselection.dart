import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Languageview extends StatelessWidget {
  Languageview({Key? key}) : super(key: key);
  final List locale = [
    {
      'lname': 'English',
      'locale': const Locale('en', 'US'),
    },
    {'lname': 'हिंदी', 'locale': const Locale('hi', 'IN')}
  ];
  updatelocale(locale) {
    Get.back();
    Get.updateLocale(locale);
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Center(
        child: Container(
          height: 300,

          padding: const EdgeInsets.all(4),
          // margin: EdgeInsets.only(left: 10, top: 20),
          width: 300,
          child: ListView.separated(
            itemCount: locale.length,
            itemBuilder: ((context, index) {
              return Card(
                color: const Color.fromARGB(255, 17, 20, 20),
                child: ListTile(
                  leading: const Icon(Icons.abc),
                  title: Text(
                    locale[index]['lname'],
                    style: const TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 30),
                  ),
                  onTap: () {
                    updatelocale(locale[index]['locale']);
                  },
                ),
              );
            }),
            separatorBuilder: ((context, index) {
              return const Divider(
                color: Color.fromARGB(255, 0, 0, 0),
              );
            }),
          ),
        ),
      ),
    ]);
  }
}
