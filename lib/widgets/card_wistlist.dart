import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CardWistlist extends StatelessWidget {
  CardWistlist({required this.titleCard, required this.type, super.key});

  String titleCard;
  TextInputType type;

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
              fontSize: 12,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(top: 10),
            child: TextField(
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
            )),
      ],
    );
  }
}
