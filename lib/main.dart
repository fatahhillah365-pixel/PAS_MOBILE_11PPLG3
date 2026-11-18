import 'package:pas_mobile_fatah_11pplg3/Routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile_fatah_11pplg3/Routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Belajar Flutter PPLG 3",
      initialRoute: Routes.loginpages,
      getPages: Routes.myPages,
    );
  }
}