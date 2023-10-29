import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../infrastructure/navigation/routes.dart';

// ignore: must_be_immutable
class PendapatanView extends GetView {
  PendapatanView({Key? key}) : super(key: key);

  TextEditingController pendapatanController = TextEditingController();

  final box = GetStorage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
              onPressed: () => Get.offNamed(Routes.HOME),
              icon: Icon(
                Icons.arrow_back,
                color: Color(0xff303841),
              )),
          title: const Text(
            'Pendapatan',
            style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontFamily: "Poppins",
                fontWeight: FontWeight.bold),
          ),
          backgroundColor: Color(0xFFFAFAFA),
          centerTitle: true),
      body:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 60,
                margin:
                    EdgeInsets.only(left: 18, right: 18, top: 29, bottom: 43),
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                            width: 32,
                            height: 32,
                            margin: EdgeInsets.only(right: 16),
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Color(0xffF7F7F7),
                                borderRadius: BorderRadius.circular(6)),
                            child: Image(
                                image: Svg("assets/icons/home.svg",
                                    color: Color(0xffC1C9D1)))),
                        Text(
                          "Freelancer",
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: "Poppins",
                              letterSpacing: 1,
                              color: Colors.black),
                        )
                      ],
                    ),
                    Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: Color(0xffC1C9D1),
                      size: 24,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Center(
                  child: Text(
                    'Masukkan Pemasukkan',
                    style: TextStyle(
                      color: Color(0xFF303840),
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: SizedBox(
                  width: double.infinity,
                  height: 80,
                  child: TextField(
                    controller: pendapatanController,
                    cursorColor: Colors.black,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 36,
                        fontFamily: "Plus Jakarta Sans",
                        color: Colors.black),
                    keyboardType: TextInputType.number,
                  ),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 2),
          child: SizedBox(
            width: double.infinity,
            height: 54,
            child: ElevatedButton(
                onPressed: () {
                  box.write('pendapatan', pendapatanController.value.text);
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF009688)),
                child: Text(
                  "Simpan",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Plus Jakarta Sans',
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1),
                )),
          ),
        )
      ]),
    );
  }
}
