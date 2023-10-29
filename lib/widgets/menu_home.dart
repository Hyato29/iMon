import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MenuHome extends StatelessWidget {
  MenuHome({required this.image, required this.title, super.key});

  ImageProvider image;
  String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 5),
          width: 50,
          height: 50,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(8)),
          child: Image(image: image),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Text(
            title,
            style: TextStyle(
                color: Color(0xFF7C8894),
                fontSize: 10,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                letterSpacing: 1),
          ),
        ),
      ],
    );
  }
}
