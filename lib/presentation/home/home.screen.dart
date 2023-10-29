import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

import 'package:get/get.dart';
import 'package:ngitengs/infrastructure/navigation/routes.dart';
import 'package:ngitengs/widgets/card_shopping.dart';
import '../../widgets/menu_drawer.dart';
import '../../widgets/menu_home.dart';
import 'controllers/home.controller.dart';

// ignore: must_be_immutable
class HomeScreen extends GetView<HomeController> {
  HomeScreen({Key? key}) : super(key: key);

  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: SafeArea(
          child: Column(
            children: [
              MenuTile(textTitle: "Akun", iconLeading: Icons.person),
              MenuTile(textTitle: "Home", iconLeading: Icons.home),
              MenuTile(textTitle: "Setting", iconLeading: Icons.settings),
            ],
          ),
        ),
      ),
      appBar: appBar(),
      backgroundColor: const Color(0xFFFAFAFA),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 18, right: 18, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 28, bottom: 7),
                child: Text(
                  "Selamat Datang,",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "Poppins",
                    fontSize: 20,
                  ),
                ),
              ),
              const Text("Khayatullah Al Amin",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppins",
                      fontSize: 12,
                      color: Color(0xFF959191),
                      letterSpacing: 1)),
              Container(
                width: double.infinity,
                padding:
                    EdgeInsets.only(top: 20, left: 25, bottom: 10, right: 16),
                height: 152,
                margin: EdgeInsets.only(top: 26, bottom: 30),
                decoration: BoxDecoration(
                    color: Colors.black,
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xFF025464),
                        Color(0xFF41BCD4),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Tabungan Saat ini",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: "Poppins",
                            fontSize: 16,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                        Container(
                          width: 49,
                          height: 26,
                          decoration: ShapeDecoration(
                              color: const Color(0xFFEA964F),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5))),
                        )
                      ],
                    ),
                    const Text(
                      "Rp.500.0000.000",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: "Poppins",
                          fontSize: 20,
                          color: Color(0xFFFFFFFF)),
                    ),
                    const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "VALID THRU",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    fontFamily: "Poppins",
                                    color: Color(0xFFFFFFFF)),
                              ),
                              Text(
                                "CV",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    fontFamily: "Poppins",
                                    color: Color(0xFFFFFFFF)),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "06/23",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  fontFamily: "Poppins",
                                  color: Color(0xFFFFFFFF)),
                            ),
                            Text(
                              "***",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: Color(0xFFFFFFFF)),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const Text(
                "Menu",
                style: TextStyle(
                    color: Color(0xFF303840),
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 11, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        DecoratedBox(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8)),
                          child: InkWell(
                            onTap: () {
                              Get.offNamed(Routes.PENGELUARAN);
                            },
                            child: const SizedBox(
                              width: 50,
                              height: 50,
                              child: Icon(
                                Icons.arrow_upward,
                                color: Color(0xFFA8BACD),
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(
                            "Pengeluaran",
                            style: TextStyle(
                                color: Color(0xFF7C8894),
                                fontSize: 10,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        DecoratedBox(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8)),
                          child: InkWell(
                            onTap: () {
                              Get.offNamed(Routes.PENDAPATAN);
                            },
                            child: const SizedBox(
                              width: 50,
                              height: 50,
                              child: Icon(
                                Icons.arrow_downward,
                                color: Color(0xFFA8BACD),
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Text(
                            "Pendapatan",
                            style: TextStyle(
                                color: Color(0xFF7C8894),
                                fontSize: 10,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            Get.offNamed(Routes.RIWAYAT);
                          },
                          child: Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: 50,
                            height: 50,
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8)),
                            child: const Image(
                                image: AssetImage("assets/icons/riwayat.png")),
                          ),
                        ),
                        const Text(
                          "Riwayat",
                          style: TextStyle(
                              color: Color(0xFF7C8894),
                              fontSize: 10,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    InkWell(
                      onTap: () => Get.toNamed(Routes.WISTLIST),
                      child: MenuHome(
                          image: const Svg("assets/icons/heart.svg"),
                          title: "Wistlist"),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () => Get.toNamed(Routes.KALKULATOR),
                    child: MenuHome(
                      image: const Svg("assets/icons/dollar-sign.svg"),
                      title: "Kalkulator",
                    ),
                  ),
                  InkWell(
                    onTap: () => Get.offNamed(Routes.DANA_PENSIUN),
                    child: MenuHome(
                        image: const Svg("assets/icons/book.svg"),
                        title: "Dana Pensiun"),
                  ),
                  InkWell(
                    onTap: () => Get.offNamed(Routes.DANA_DARURAT),
                    child: MenuHome(
                        image: Svg("assets/icons/bell.svg"),
                        title: "Dana Darurat"),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Get.offNamed(Routes.RIWAYAT);
                        },
                        child: const SizedBox(
                          width: 50,
                          height: 50,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Transaksi",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xff303840),
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    Icon(Icons.arrow_forward_ios, color: Color(0xffC1C9D1)),
                  ],
                ),
              ),
              Container(
                  width: double.infinity,
                  height: 300,
                  margin: const EdgeInsets.only(top: 15),
                  child: Obx(() => homeController.transactions.isEmpty
                      ? Center(
                          child: Text(
                          "Kosong",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black.withOpacity(0.3),
                              fontFamily: "Poppins"),
                        ))
                      : ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            var product = homeController.transactions[index];

                            return CardShopping(
                                titleCard: product.title,
                                dateCard: "Brand : ${product.brand}",
                                priceCard: "\$ ${product.price.toString()}",
                                color: Colors.red,
                                iconCard: const Svg("assets/icons/shop.svg",
                                    color: Color(0xffC1C9D1)));
                          },
                        )))
            ],
          ),
        ),
      ),
      bottomNavigationBar: bottomAppBar(),
    );
  }

  AppBar appBar() {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.black),
      elevation: 0.5,
      backgroundColor: const Color(0xFFFAFAFA),
      title: const Center(
        child: Text(
          "Home",
          style: TextStyle(
            color: Colors.black,
            fontFamily: "Poppins",
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 18),
          child: GestureDetector(
            onTap: () {
              Get.toNamed(Routes.PROFIL);
            },
            child: const Image(
              image: AssetImage("assets/img/profil.png"),
              height: 32,
              width: 32,
            ),
          ),
        )
      ],
    );
  }

  BottomAppBar bottomAppBar() {
    return BottomAppBar(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Image(image: Svg("assets/icons/home.svg")),
          GestureDetector(
              onTap: () => Get.toNamed(Routes.STATISTIC),
              child: const Image(image: AssetImage("assets/icons/graf.png"))),
          GestureDetector(
            onTap: () => Get.toNamed(Routes.PROFIL),
            child: const Icon(Icons.person_4_outlined,
                color: Color(0xffC1C9D1), size: 30),
          ),
        ],
      ),
    ));
  }
}
