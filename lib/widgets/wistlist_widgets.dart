import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class WistlistWidgets extends StatelessWidget {
  const WistlistWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 13),
          height: 90,
          decoration: BoxDecoration(
              color: Color(0x0F000000), borderRadius: BorderRadius.circular(6)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Image(
                        image: Svg("assets/icons/home_icon.svg"),
                        width: 32,
                        height: 32,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Beli Rumah',
                              style: TextStyle(
                                  color: Color(0xFF303840),
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1),
                            ),
                            Text(
                              '20 Juli 2025',
                              style: TextStyle(
                                color: Color(0xFF7C8894),
                                fontSize: 10,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                letterSpacing: 1,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Text(
                    'Rp.3.000.000.000',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        color: Color(0xFF14121E),
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Divider(
                  color: Color(0xFF009688),
                  thickness: 2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Rp.3.000.000',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0xFF009688),
                        fontSize: 10,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
