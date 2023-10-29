import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

import '../../infrastructure/navigation/routes.dart';
import 'controllers/login.controller.dart';

// ignore: must_be_immutable
class LoginScreen extends GetView<LoginController> {
  LoginScreen({Key? key}) : super(key: key);

  LoginController loginController = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 57, left: 20, right: 20),
              child: Row(
                children: [
                  Text(
                    "Masuk",
                    style: TextStyle(
                        fontFamily: "Outfit",
                        fontWeight: FontWeight.w700,
                        fontSize: 18),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 10,
                    ),
                    child: Image(
                      image: Svg("assets/icons/User.svg"),
                      height: 17,
                      width: 18,
                    ),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20, bottom: 24),
              child: Text(
                "Selamat datang kembali",
                style: TextStyle(
                    color: Color(0xFF5B5A5A),
                    fontSize: 14,
                    fontFamily: "Outfit",
                    fontWeight: FontWeight.w400),
              ),
            ),
            const SizedBox(
              height: 267,
              width: double.infinity,
              child: Image(
                image: AssetImage("assets/img/login.png"),
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 24),
              child: Column(
                children: [
                  TextField(
                      keyboardType: TextInputType.emailAddress,
                      controller: loginController.emailLogin,
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
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: TextField(
                        obscureText: true,
                        controller: loginController.passLogin,
                        obscuringCharacter: "*",
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            hintStyle: const TextStyle(
                                fontFamily: "Poppins",
                                color: Color(0xFF535050)),
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
                  const Padding(
                    padding: EdgeInsets.only(top: 19, bottom: 17, right: 18),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Lupa kata sandi?',
                        style: TextStyle(
                            color: Color(0xFF5B5A5A),
                            fontSize: 14,
                            fontFamily: "Outfit",
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: SizedBox(
                      height: 54,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          loginController.loginApi();
                        },
                        child: Text(
                          "Masuk",
                          style: TextStyle(
                              fontFamily: "Plus Jakarta Sans",
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            backgroundColor: Color(0xFFF009688)),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(
                            color: Color(0xFFA39797),
                            thickness: 1,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          child: Text(
                            " atau login dengan ",
                            style: TextStyle(
                                color: Color(0xFF747070),
                                fontFamily: "Outfit",
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            color: Color(0xFFA39797),
                            thickness: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 35),
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
                          "Belum punya akun ? ",
                          style: TextStyle(
                              color:
                                  Colors.black.withOpacity(0.6000000238418579),
                              fontSize: 12,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w300),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(Routes.REGISTER);
                          },
                          child: Text(
                            "Daftar",
                            style: TextStyle(
                                color: Colors.black
                                    .withOpacity(0.6000000238418579),
                                fontSize: 12,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
