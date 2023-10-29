import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

import 'package:get/get.dart';
import 'package:ngitengs/infrastructure/navigation/routes.dart';

import 'controllers/profil.controller.dart';

// ignore: must_be_immutable
class ProfilScreen extends GetView<ProfilController> {
  ProfilScreen({Key? key}) : super(key: key);

  ProfilController profilController = Get.put(ProfilController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            children: [
              Center(
                child: Stack(children: [
                  Container(
                    margin: EdgeInsets.only(top: 131),
                    width: 108,
                    height: 108,
                    padding: EdgeInsets.all(28),
                    decoration: ShapeDecoration(
                        color: Color(0xFFC4C4C4),
                        image: DecorationImage(
                            image: AssetImage("assets/img/profil.png"),
                            fit: BoxFit.cover),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100))),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 205, left: 75),
                    width: 34,
                    height: 34,
                    decoration: ShapeDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                            image: Svg("assets/icons/editprofil.svg")),
                        shape: OvalBorder()),
                  )
                ]),
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 24, bottom: 17),
                  child: Text(
                            "Khayatullah Al Amin",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.bold),
                          ),),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                padding: EdgeInsets.all(20),
                width: double.infinity,
                height: 140,
                decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5))),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image(
                            image: Svg("assets/icons/userblack.svg",
                                color: Colors.black),
                            width: 20,
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 22),
                            child: Text(
                              "Edit Informasi Profil",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image(
                                image: Svg("assets/icons/notification.svg",
                                    color: Colors.black),
                                width: 20,
                                height: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 22),
                                child: Text(
                                  "Notifikasi",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "ON",
                            style: TextStyle(
                                color: Color(0xFF009688),
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image(
                                image: Svg("assets/icons/language.svg",
                                    color: Colors.black),
                                width: 20,
                                height: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 22),
                                child: Text(
                                  "Bahasa",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "Indonesia",
                            style: TextStyle(
                                color: Color(0xFF009688),
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ]),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                padding: EdgeInsets.all(20),
                width: double.infinity,
                height: 140,
                decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5))),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image(
                                image: Svg("assets/icons/tema.svg",
                                    color: Colors.black),
                                width: 20,
                                height: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 22),
                                child: Text(
                                  "Tema",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "Light",
                            style: TextStyle(
                                color: Color(0xFF009688),
                                fontSize: 12,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Image(
                            image: Svg("assets/icons/help.svg",
                                color: Colors.black),
                            width: 20,
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 22),
                            child: Text(
                              "Pusat Bantuan",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Image(
                            image: Svg("assets/icons/contact_me.svg",
                                color: Colors.black),
                            width: 20,
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 22),
                            child: Text(
                              "Kontak Kami",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ]),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
                onTap: () {
                  Get.offNamed(Routes.HOME);
                },
                child: Image(
                  image: Svg("assets/icons/home.svg"),
                  color: Color(0xffC1C9D1),
                )),
            InkWell(
                onTap: () => Get.offNamed(Routes.STATISTIC),
                child: Image(image: AssetImage("assets/icons/graf.png"))),
            Icon(Icons.person_4_outlined, color: Color(0xff94C3F6), size: 30),
          ],
        ),
      )),
    );
  }
}
