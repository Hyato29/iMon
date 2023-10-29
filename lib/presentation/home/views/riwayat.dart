import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

import 'package:get/get.dart';
import 'package:ngitengs/presentation/home/views/riwayat/pendapatan.dart';
import 'package:ngitengs/presentation/home/views/riwayat/pengeluaran.dart';

import '../../../infrastructure/navigation/routes.dart';

// ignore: must_be_immutable
class Riwayat extends GetView {
  Riwayat({Key? key}) : super(key: key);

  TabBar myTabBar = TabBar(
      labelColor: Colors.white,
      unselectedLabelColor: Colors.black,
      indicator: BoxDecoration(
          color: Color(0xFF009688), borderRadius: BorderRadius.circular(20)),
      tabs: [
        Tab(
          child: Text(
            "Pendapatan",
            style: TextStyle(fontFamily: "Poppins"),
          ),
        ),
        Tab(
            child: Text(
          "Pengeluaran",
          style: TextStyle(fontFamily: "Poppins"),
        ))
      ]);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () => Get.offNamed(Routes.HOME),
              icon: Icon(
                Icons.arrow_back,
                color: Color(0xff303841),
              )),
          title: const Text(
            'Riwayat',
            style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontFamily: "Poppins",
                fontWeight: FontWeight.bold),
          ),
          backgroundColor: Color(0xFFFAFAFA),
          centerTitle: true,
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(41),
              child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 18),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFFF3F4F5),
                  ),
                  child: myTabBar)),
        ),
        body: Padding(
          padding: EdgeInsets.only(left: 18, right: 18, top: 10),
          child: TabBarView(children: [
            Pendapatan(),
            Pengeluaran(),
          ]),
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
                    color: Color(0xff94C3F6),
                  )),
              InkWell(
                  onTap: () => Get.offNamed(Routes.STATISTIC),
                  child: Image(image: AssetImage("assets/icons/graf.png"))),
              Icon(Icons.person_4_outlined, color: Color(0xffC1C9D1), size: 30),
            ],
          ),
        )),
      ),
    );
  }
}
