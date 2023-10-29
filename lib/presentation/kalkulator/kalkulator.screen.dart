import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:ngitengs/widgets/input_calculator.dart';

import '../../infrastructure/navigation/routes.dart';
import 'controllers/kalkulator.controller.dart';

// ignore: must_be_immutable
class KalkulatorScreen extends GetView<KalkulatorController> {
  KalkulatorScreen({Key? key}) : super(key: key);

  final box = GetStorage();

  KalkulatorController kalkulatorController = Get.put(KalkulatorController());
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
          'Kalkulator Investasi',
          style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontFamily: "Poppins",
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color(0xFFFAFAFA),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 26),
                    child: Text(
                      "Pengelolaan Investasi",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  InputCalculator(
                    controller: kalkulatorController.jumInvesController,
                    titleCard: "Jumlah Investasi Diinginkan",
                    type: TextInputType.number,
                  ),
                  InputCalculator(
                      controller:
                          kalkulatorController.waktuPengumpulanController,
                      titleCard: "Waktu Untuk Mengumpulkan",
                      type: TextInputType.number),
                  InputCalculator(
                      controller: kalkulatorController.uangSaatiniController,
                      titleCard: "Uang Anda Saat Ini",
                      type: TextInputType.number),
                  InputCalculator(
                      controller: kalkulatorController.targetInvestController,
                      titleCard: "Target Investasi Tiap Bulan",
                      type: TextInputType.number),
                  const Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      "Investasi Dengan Return",
                      style: TextStyle(
                        color: Color(0xFF303840),
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: TextField(
                      controller: kalkulatorController.invesReturnController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          suffixIcon: const Icon(
                            Icons.percent,
                            color: Colors.black,
                          ),
                          hintStyle: const TextStyle(
                              fontFamily: "Poppins", color: Color(0xFF535050)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  const BorderSide(color: Color(0xFF959191))),
                          border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xFF959191)),
                              borderRadius: BorderRadius.circular(10)),
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 17)),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 52),
                child: SizedBox(
                  height: 54,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      kalkulatorController.calculator();
                    },
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        backgroundColor: Color(0xFFF009688)),
                    child: const Text(
                      "Hitung",
                      style: TextStyle(
                          fontFamily: "Plus Jakarta Sans",
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
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
                  Get.toNamed(Routes.HOME);
                },
                child: Image(
                  image: Svg("assets/icons/home.svg"),
                  color: Color(0xffC1C9D1),
                )),
            GestureDetector(
                onTap: () => Get.toNamed(Routes.STATISTIC),
                child: Image(
                    image: Svg("assets/icons/graf.svg",
                        color: Color(0xff94C3F6)))),
            GestureDetector(
              onTap: () => Get.offNamed(Routes.PROFIL),
              child: Icon(Icons.person_4_outlined,
                  color: Color(0xffC1C9D1), size: 30),
            ),
          ],
        ),
      )),
    );
  }
}
