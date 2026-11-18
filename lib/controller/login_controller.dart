import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile_fatah_11pplg3/Routes.dart';
import 'package:pas_mobile_fatah_11pplg3/models/loginmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class LoginController extends GetxController {
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  var isloading = false.obs;
  var loginmodel = Rxn<LoginModel>;

  void login() async {
    if (txtUsername.text.toString().isEmpty ||
        txtPassword.text.toString().isEmpty) {
      Get.snackbar('error', 'username dan password harus terisi');
    } else {
      try {
        isloading.value = true;
        final Url = Uri.parse("https://mediadwi.com/api/latihan/login");
        final response = await http.post(
          Url,
          body: {
            "username": txtUsername.text.toString(),
            "password": txtPassword.text.toString(),
          },
        );
        isloading.value = false;
        if (OnTap == true) {
          Get.offNamed(Routes.Menudrawer);
          Get.snackbar("berhasil", "berhasil masuk");
        } else {
          Get.snackbar("gagal", "gagal masuk");
        }
        // if (response.statusCode == 200) {
        //   // LoginModel.value = loginModelFromJson(response.body);
        //   // if (LoginModel.value.status == true) {
        //   //   Get.snackbar("berhasil", LoginModel.value!.message.toString());
        //   //   Get.offNamed(Routes.Menudrawer);
        //   // } else {
        //   //   Get.snackbar("gagal", LoginModel.value!.message.toString());
        //   // }
        // } else {
        //   Get.snackbar("gagal", "cek internet connection");
        // }
      } catch (e) {
        Get.snackbar("gagal", e.toString());
      }
    }
  }
}
