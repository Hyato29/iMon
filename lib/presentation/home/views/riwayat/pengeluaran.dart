import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:get_storage/get_storage.dart';
import 'package:ngitengs/widgets/card_shopping.dart';

import '../../controllers/home.controller.dart';

// ignore: must_be_immutable
class Pengeluaran extends GetView<HomeController> {
  Pengeluaran({super.key});

  HomeController homeController = Get.put(HomeController());

  final box = GetStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

                CardShopping(
                    titleCard: "Beli Token Listrik",
                    dateCard: "14 July 2023",
                    priceCard: "-Rp.30.000",
                    color: Colors.red,
                    iconCard: Svg("assets/icons/shop.svg")),

          CardShopping(
              titleCard: "Beli Makanan",
              dateCard: "14 July 2023",
              priceCard: "-Rp.500.000",
              color: Colors.red,
              iconCard: Svg("assets/icons/shop.svg")),
          CardShopping(
              titleCard: "Beli Skin Care",
              dateCard: "14 July 2023",
              priceCard: "-Rp.500.000",
              color: Colors.red,
              iconCard: Svg("assets/icons/shop.svg")),
        ],
      ),
    );
  }
}
