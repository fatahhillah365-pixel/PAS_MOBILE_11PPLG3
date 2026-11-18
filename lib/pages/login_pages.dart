import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:pas_mobile_fatah_11pplg3/controller/login_controller.dart';

class LoginPages extends StatelessWidget {
  LoginPages({super.key});
  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("login app")),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: controller.txtUsername,
              decoration: InputDecoration(label: Text("Input Username")),
            ),
            TextField(
              controller: controller.txtPassword,
              decoration: InputDecoration(label: Text("input password ")),
            ),
            OutlinedButton(
              onPressed: () {
                controller.login();
              },
              child: Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}
