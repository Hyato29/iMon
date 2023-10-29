import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:get_storage/get_storage.dart';
import 'package:ngitengs/widgets/card_shopping.dart';

class Pendapatan extends StatelessWidget {
  Pendapatan({super.key});

  final box = GetStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CardShopping(
              titleCard: "Freelancer",
              dateCard: "14 July 2023",
              priceCard: "+Rp.3.000.000",
              color: Color(0xFF009688),
              iconCard: Svg("assets/icons/home.svg", color: Color(0xffC1C9D1))),
          CardShopping(
              titleCard: "Freelancer",
              dateCard: "14 July 2023",
              priceCard: "+Rp.3.000.000",
              color: Color(0xFF009688),
              iconCard: Svg("assets/icons/home.svg", color: Color(0xffC1C9D1))),
          CardShopping(
              titleCard: "Freelancer",
              dateCard: "14 July 2023",
              priceCard: "+Rp.3.000.000",
              color: Color(0xFF009688),
              iconCard: Svg("assets/icons/home.svg", color: Color(0xffC1C9D1))),
        ],
      ),
    );
  }
}
