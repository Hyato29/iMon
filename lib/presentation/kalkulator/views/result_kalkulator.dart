import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:ngitengs/presentation/kalkulator/controllers/kalkulator.controller.dart';
import 'package:ngitengs/widgets/profil_tabungan.dart';

import '../../../infrastructure/navigation/routes.dart';

// ignore: must_be_immutable
class ResultKalkulator extends GetView {
  ResultKalkulator({Key? key}) : super(key: key);

  final box = GetStorage();

  KalkulatorController kalkulatorController = Get.put(KalkulatorController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Get.offNamed(Routes.KALKULATOR),
            icon: Icon(
              Icons.arrow_back,
              color: Color(0xff303841),
            )),
        title: const Text(
          'Hasil',
          style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontFamily: "Poppins",
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color(0xFFFAFAFA),
        centerTitle: true,
      ),
      backgroundColor: Color(0xFFFAFAFA),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProfilTabungan(
                  titelCard: "Nominal Tujuan", valueCard: "Rp. 5.000.000"),
              Padding(
                padding: const EdgeInsets.only(bottom: 10, top: 26),
                child: Text(
                  "Hasil Investasi",
                  style: TextStyle(
                    color: Color(0xFF303840),
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              DecoratedBox(
                decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 0.20, color: Color(0xFF959191)),
                      borderRadius: BorderRadius.circular(10),
                    )),
                child: SizedBox(
                  height: 51,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Text(
                          "Rp.${box.read('hasil')}",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontFamily: "Poppins"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: DecoratedBox(
                  decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 0.20, color: Color(0xFF959191)),
                        borderRadius: BorderRadius.circular(10),
                      )),
                  child: SizedBox(
                    height: 258,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16, top: 14),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Uangmu Saat Ini",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF303840),
                                fontFamily: "Poppins"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 6, bottom: 16),
                            child: Text(
                              "Rp. ${box.read('uang')}",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontFamily: "Poppins"),
                            ),
                          ),
                          Text(
                            "Pilihan Investasi",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF303840),
                                fontFamily: "Poppins"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 6, bottom: 16),
                            child: Text(
                              "Crypto & Saham",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontFamily: "Poppins"),
                            ),
                          ),
                          Text(
                            "Pokok Investasi",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF303840),
                                fontFamily: "Poppins"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 6, bottom: 16),
                            child: Text(
                              "Rp. 1.802.901.182,00",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontFamily: "Poppins"),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 6),
                            child: Text(
                              "Bunga Investasi",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF303840),
                                  fontFamily: "Poppins"),
                            ),
                          ),
                          Text(
                            "Rp. 202.901.182,00",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontFamily: "Poppins"),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Text(
                  "Hasil Investasi",
                  style: TextStyle(
                    color: Color(0xFF303840),
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              DecoratedBox(
                decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 0.20, color: Color(0xFF959191)),
                      borderRadius: BorderRadius.circular(10),
                    )),
                child: SizedBox(
                  height: 208,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16, top: 14),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Tahun 1",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontFamily: "Poppins"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 6, bottom: 10),
                          child: Text(
                            "Uangmu saat ini Rp. ${box.read('uang')}",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                                fontFamily: "Poppins"),
                          ),
                        ),
                        Text(
                          "Tahun 27",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontFamily: "Poppins"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 6, bottom: 10),
                          child: Text(
                            "Pindahkan tabungan anda ke Reksadana Pasar\nUang & Pendapatan Tetap Tertentu",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                                fontFamily: "Poppins"),
                          ),
                        ),
                        Text(
                          "Tahun 30",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontFamily: "Poppins"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 6,
                          ),
                          child: Text(
                            "Pindahkan tabungan anda ke Reksadana Pasar\nUang & Pendapatan Tetap Tertentu",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                                fontFamily: "Poppins"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 42),
                child: SizedBox(
                  height: 54,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                    },
                    child: Text(
                      "Share Hasil",
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
