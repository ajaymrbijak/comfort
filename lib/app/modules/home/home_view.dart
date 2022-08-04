import 'package:comfort/app/modules/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:get_storage/get_storage.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(Object context) {
    GetStorage get = GetStorage();
    return MaterialApp(
      themeMode: ThemeMode.dark,
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(
            Icons.home_filled,
          ),
          // leading:const Icon(Icons.arrow_back_ios_new_outlined,),
          title: const Text("Home View "),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(69, 0, 30, 4),
                child: Text(
                  "${get.read('id')} \nLogged in Successfully",
                  style: const TextStyle(fontSize: 34),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton.icon(
                      onPressed: () {
                        controller.logout();
                      },
                      icon: const Icon(Icons.logout),
                      label: const Text(
                        "Logout ",
                        style: TextStyle(
                          fontSize: 34,
                        ),
                      )),
                  ElevatedButton.icon(
                      onPressed: () {
                        controller.back();
                      },
                      icon: const Icon(Icons.close),
                      label: const Text(
                        "Exit ",
                        style: TextStyle(
                          fontSize: 34,
                        ),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
