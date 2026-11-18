import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile_fatah_11pplg3/menu/feat.dart';
import 'package:pas_mobile_fatah_11pplg3/menu/home.dart';
import 'package:pas_mobile_fatah_11pplg3/menu/profile.dart';

class Menudrawercontroller extends GetxController {
  final RxInt selectedIndex = 0.obs;

  void changePages(int index) {
    selectedIndex.value = index;
  }

  List<Widget> pages = [Home(), Feat(), Profile()];
}
