import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// ignore: must_be_immutable
class InputCalculator extends StatelessWidget {
  InputCalculator({required this.titleCard, required this.type, required this.controller,  super.key});

  String titleCard;
  TextInputType type;
  TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text(
            titleCard,
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
            controller: controller,
            keyboardType: type,
            decoration: InputDecoration(
                hintStyle: const TextStyle(
                    fontFamily: "Poppins", color: Color(0xFF535050)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Color(0xFF959191))),
                border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xFF959191)),
                    borderRadius: BorderRadius.circular(10)),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 17)),
          ),
        ),
      ],
    );
  }
}
