import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pas_mobile_fatah_11pplg3/controller/mainmenucontroller.dart';

class MainmenuPages extends StatelessWidget {
  MainmenuPages({super.key});

  @override
  Widget build(BuildContext context) {
      final MainMenuController menuController = Get.put(MainMenuController());

    return Obx(
      () => Scaffold(
        body: IndexedStack(
        index: menuController.selectedIndex.value,
        children: menuController.listPages,
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: menuController.selectedIndex.value,
          onTap: menuController.ChangePages,
          items: const [
          BottomNavigationBarItem(
          icon: Icon(Icons.home_filled),
          label: "home",
          ),
          BottomNavigationBarItem(
          icon: Icon(Icons.history),
          label: "history",
          ),
          BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: "profile",
          ),
        ]),
      ),
    );
  }
}