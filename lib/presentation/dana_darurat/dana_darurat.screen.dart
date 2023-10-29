import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

import 'package:get/get.dart';

import '../../infrastructure/navigation/routes.dart';
import '../../widgets/input_calculator.dart';
import 'controllers/dana_darurat.controller.dart';

// ignore: must_be_immutable
class DanaDaruratScreen extends GetView<DanaDaruratController> {
  DanaDaruratScreen({Key? key}) : super(key: key);

  DanaDaruratController danaDaruratController =
      Get.put(DanaDaruratController());
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
          'Dana Darurat',
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
                  const Padding(
                    padding: EdgeInsets.only(top: 20, bottom: 26),
                    child: Text(
                      "Wujudkan Impianmu",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  InputCalculator(
                    controller: danaDaruratController.pengeluaranController,
                    titleCard: "Pengeluaran / Bulan",
                    type: TextInputType.number,
                  ),
                  InputCalculator(
                      controller: danaDaruratController.usiaSaatiniController,
                      titleCard: "Usia Anda Saat Ini",
                      type: TextInputType.number),
                  InputCalculator(
                      controller: danaDaruratController.usiaPensiunController,
                      titleCard: "Usia Pensiun",
                      type: TextInputType.number),
                  InputCalculator(
                      controller: danaDaruratController.danaPensiunController,
                      titleCard: "Dana Pensiun Saat Ini",
                      type: TextInputType.number),
                  InputCalculator(
                      controller: danaDaruratController.targetInvestController,
                      titleCard: "Target Inverstasi / Bulan",
                      type: TextInputType.number),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 52),
                child: SizedBox(
                  height: 54,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Hitung",
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
