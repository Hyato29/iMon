import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:ngitengs/presentation/screens.dart';

import '../../infrastructure/navigation/routes.dart';
import 'controllers/register.controller.dart';

class RegisterScreen extends GetView<RegisterController> {
  RegisterScreen({Key? key}) : super(key: key);

  final registerController = RegisterController();

  final box = GetStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 57, left: 20, bottom: 2),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Text(
                      "Registrasi",
                      style: TextStyle(
                          fontFamily: "Outfit",
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                  ),
                  Image(
                    image: Svg("assets/icons/User.svg"),
                    height: 17,
                    width: 18,
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, bottom: 31),
              child: Text(
                "Selamat bergabung bersama kami",
                style: TextStyle(
                    color: Color(0xFF5B5A5A),
                    fontSize: 14,
                    fontFamily: "Outfit",
                    fontWeight: FontWeight.w400),
              ),
            ),
            Center(
              child: Stack(
                children: [
                  Container(
                    width: 108,
                    height: 108,
                    decoration: const BoxDecoration(
                        color: Color(0xFFC4C4C4), shape: BoxShape.circle),
                    child: Obx(() {
                      final selectedImage =
                          registerController.selectedImage.value;
                      return selectedImage != null
                          ? ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.file(
                                File(selectedImage.path),
                                fit: BoxFit.cover,
                              ),
                            )
                          : const Image(
                              image: Svg("assets/icons/person.svg"),
                              color: Color(0xFFFBF7F7),
                              width: 52,
                              height: 52,
                            );
                    }),
                  ),
                  Positioned(
                      bottom: -5,
                      left: 70,
                      child: Container(
                        width: 35,
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 172, 172, 172),
                            shape: BoxShape.circle),
                        child: IconButton(
                            onPressed: () {
                              registerController.pickImage();
                            },
                            icon: const Icon(
                              Icons.add_a_photo,
                              color: Colors.white,
                              size: 20,
                            )),
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 31, left: 18, right: 18),
              child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  controller: registerController.nameController,
                  decoration: InputDecoration(
                      hintStyle: const TextStyle(
                          fontFamily: "Poppins", color: Color(0xFF535050)),
                      hintText: "Nama Panjang",
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(color: Color(0xFF959191))),
                      border: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Color(0xFF959191)),
                          borderRadius: BorderRadius.circular(10)),
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 17))),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
              child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  controller: registerController.emailController,
                  decoration: InputDecoration(
                      hintStyle: const TextStyle(
                          fontFamily: "Poppins", color: Color(0xFF535050)),
                      hintText: "Email",
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(color: Color(0xFF959191))),
                      border: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Color(0xFF959191)),
                          borderRadius: BorderRadius.circular(10)),
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 17))),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: TextField(
                  obscureText: false,
                  controller: registerController.passController,
                  obscuringCharacter: "*",
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      hintStyle: const TextStyle(
                          fontFamily: "Poppins", color: Color(0xFF535050)),
                      hintText: "Kata Sandi",
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(color: Color(0xFF959191))),
                      border: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Color(0xFF959191)),
                          borderRadius: BorderRadius.circular(10)),
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 17))),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 10, left: 18, right: 18, bottom: 43),
              child: TextField(
                  obscureText: true,
                  controller: registerController.confirmPassController,
                  obscuringCharacter: "*",
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      hintStyle: const TextStyle(
                          fontFamily: "Poppins", color: Color(0xFF535050)),
                      hintText: "Konfirmasi Kata Sandi",
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(color: Color(0xFF959191))),
                      border: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Color(0xFF959191)),
                          borderRadius: BorderRadius.circular(10)),
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 17))),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: SizedBox(
                height: 54,
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFF009688),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {
                      registerController.register(
                          registerController.nameController.text.toString(),
                          registerController.emailController.text.toString(),
                          registerController.passController.text.toString(),
                          registerController.confirmPassController.text
                              .toString());
                      box.write(
                          'user', registerController.nameController.value.text);
                      box.write('email',
                          registerController.emailController.value.text);
                      Get.put(HomeScreen());
                    },
                    child: const Text(
                      "Daftar",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Sans Jakarta Plus",
                        // letterSpacing: -0.40
                      ),
                    )),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 42, left: 44, right: 44),
              child: Row(children: [
                Expanded(
                    child: Divider(
                  color: Color(0xFFA39797),
                  thickness: 1,
                )),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Text(
                    " atau login dengan ",
                    style: TextStyle(
                        color: Color(0xFF747070),
                        fontSize: 12,
                        fontFamily: "Outfit",
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Expanded(
                    child: Divider(
                  color: Color(0xFFA39797),
                  thickness: 1,
                )),
              ]),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Image(
                      image: AssetImage("assets/icons/icon.png"),
                      width: 19,
                      height: 20,
                    ),
                  ),
                  Text(
                    "Google",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 38, bottom: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Sudah punya akun ? ",
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.6000000238418579),
                        fontSize: 12,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w300),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.LOGIN);
                    },
                    child: Text(
                      "Masuk",
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.6000000238418579),
                          fontSize: 12,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w700),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
