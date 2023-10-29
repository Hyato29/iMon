import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

import 'package:get/get.dart';
import 'package:ngitengs/infrastructure/navigation/routes.dart';
import 'package:ngitengs/presentation/statistic/views/chart.dart';
import 'package:ngitengs/widgets/card_shopping.dart';

import 'controllers/statistic.controller.dart';

// ignore: must_be_immutable
class StatisticScreen extends GetView<StatisticController> {
  StatisticScreen({Key? key}) : super(key: key);

  StatisticController statisticController = StatisticController();

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
          'Analisis',
          style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontFamily: "Poppins",
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color(0xFFFAFAFA),
        actions: [
          GestureDetector(
            onTap: () {
              statisticController.selectDate(context);
            },
            child: const Image(
                image:
                    Svg("assets/icons/calendar.svg", color: Color(0xff393D4E))),
          )
        ],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 25, bottom: 6),
                child: Center(
                  child: Text(
                    "${getIndonesianMonth(statisticController.selectedDate.month)} ${statisticController.selectedDate.year}",
                    style: TextStyle(
                      color: Color(0xFF303840),
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const ChartView(),
              CardShopping(
                  titleCard: "Freelancer",
                  dateCard: "14 Juli 2023",
                  priceCard: "+Rp.3.000.000",
                  color: Color(0xFF009688),
                  iconCard:
                      Svg("assets/icons/home.svg", color: Color(0xffA8BACD))),
              CardShopping(
                  titleCard: "Beli Skin Care",
                  dateCard: "15 Juli 2023",
                  priceCard: "-Rp.500.000",
                  color: Colors.red,
                  iconCard: Svg("assets/icons/shop.svg")),
              CardShopping(
                  titleCard: "Beli Makanan",
                  dateCard: "15 Juli 2023",
                  priceCard: "-Rp.500.000",
                  color: Colors.red,
                  iconCard: Svg("assets/icons/shop.svg")),
              CardShopping(
                  titleCard: "Freelancer",
                  dateCard: "15 July 2023",
                  priceCard: "+Rp.3.000.000",
                  color: Color(0xFF009688),
                  iconCard: Svg("assets/icons/home.svg")),
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
            Image(image: Svg("assets/icons/graf.svg", color: Color(0xff0000))),
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
