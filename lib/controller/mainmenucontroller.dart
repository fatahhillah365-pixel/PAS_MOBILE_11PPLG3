import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:pas_mobile_fatah_11pplg3/menu/feat.dart';
import 'package:pas_mobile_fatah_11pplg3/menu/home.dart';
import 'package:pas_mobile_fatah_11pplg3/menu/profile.dart';

class MainMenuController extends GetxController {
  final RxInt selectedIndex = 1.obs;

  void ChangePages(int index) {
    selectedIndex.value = index;
  }

  List<Widget> listPages = [Home(), Feat(), Profile()];
}
