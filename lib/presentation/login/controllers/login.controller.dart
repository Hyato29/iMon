import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:ngitengs/domain/provider/provider.dart';
import 'package:ngitengs/infrastructure/navigation/routes.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController

  final count = 0.obs;

  final TextEditingController emailLogin = TextEditingController();
  final TextEditingController passLogin = TextEditingController();

  final _loginProvider = Provider();

  RxBool loading = false.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void loginApi() async {
    try {
      http.Response response = await _loginProvider.login(
          emailLogin.value.text, passLogin.value.text);
      var data = jsonDecode(response.body);
      print(data);

      var email = emailLogin.text;
      var password = emailLogin.text;

      if ((response.statusCode == 200) &&
          (email.isNotEmpty && password.isNotEmpty)) {
        loading.value = false;
        Get.snackbar('Login Success', 'Congratulations',
            backgroundColor: Color.fromARGB(255, 0, 252, 34),
            colorText: Colors.white);
        Get.offAllNamed(Routes.HOME);
      } else {
        loading.value = false;
        Get.snackbar(
          'Login Failed',
          'Try Again',
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      }
    } catch (error) {
      print("Error Bang: $error");
    }
  }

  void increment() => count.value++;
}
