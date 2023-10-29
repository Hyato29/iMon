import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProfilTabungan extends StatelessWidget {
  ProfilTabungan({required this.titelCard, required this.valueCard, super.key});

  String titelCard;
  String valueCard;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 19),
          child: Image(
            image: AssetImage("assets/img/profil.png"),
            width: 39,
            height: 39,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(titelCard,
                style: TextStyle(
                  color: Color(0xFF333333),
                  fontSize: 12,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                )),
            Text(valueCard,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold))
          ],
        ),
      ],
    );
  }
}
