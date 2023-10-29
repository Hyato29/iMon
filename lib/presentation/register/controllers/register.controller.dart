// import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';

import '../../../domain/provider/provider.dart';

class RegisterController extends GetxController {
  //TODO: Implement RegisterController

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController confirmPassController = TextEditingController();

  final _registerProvider = Provider();
  // final box = GetStorage();
  final count = 0.obs;

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

  void register(
      String name, String email, String password, String confPass) async {
    try {
      http.Response response = await _registerProvider.register(
          nameController.value.text,
          emailController.value.text,
          passController.value.text,
          confirmPassController.value.text);

      var nameCon = nameController.text;
      var emailCon = emailController.text;
      var passCon = passController.text;
      var confPasCon = confirmPassController.text;

      if ((response.statusCode == 200) &&
          (nameCon.isNotEmpty ||
              emailCon.isNotEmpty ||
              passCon.isNotEmpty ||
              confPasCon.isNotEmpty) &&
          (passCon == confPasCon)) {
        Get.snackbar('Register Success', 'Congratulations',
            backgroundColor: Color.fromARGB(255, 0, 252, 34),
            colorText: Colors.white);
      } else {
        Get.snackbar(
          'Register Failed',
          "Try Again",
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      }
    } catch (e) {
      print("Teks ini Error ${e.toString()}");
    }
  }

  final ImagePicker _picker = ImagePicker();
  Rx<XFile?> selectedImage = Rx<XFile?>(null);

  Future<void> pickImage() async {
    XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      selectedImage.value = image;
    }
  }

  void increment() => count.value++;
}
