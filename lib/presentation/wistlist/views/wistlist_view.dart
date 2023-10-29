import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ngitengs/presentation/wistlist/controllers/wistlist.controller.dart';

import '../../../widgets/card_wistlist.dart';

// ignore: must_be_immutable
class WistlistView extends GetView<WistlistController> {
  WistlistView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Tambahkan Wistlist",
                style: TextStyle(
                  color: Color(0xFF303840),
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
              ),
              Stack(
                children: [
                  Container(
                    width: 18,
                    height: 18,
                    margin: EdgeInsets.only(top: 15, left: 15),
                    decoration: ShapeDecoration(
                        color: Color(0xFFC6C1C1), shape: OvalBorder()),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.close),
                    color: Colors.white,
                    iconSize: 10,
                  )
                ],
              )
            ],
          ),
          Divider(
            color: Colors.black,
          )
        ],
      ),
      content: Container(
        width: 500,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CardWistlist(
                  titleCard: "Pilih Jenis Wistlist",
                  type: TextInputType.emailAddress),
              CardWistlist(
                  titleCard: "Nama Wistlist", type: TextInputType.emailAddress),
              CardWistlist(
                  titleCard: "Deadline", type: TextInputType.emailAddress),
              Row(
                children: [
                  Obx(
                    () => Checkbox(
                      checkColor: Colors.white,
                      activeColor: Color(0xFF009688),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      value: controller.isChecked.value,
                      onChanged: (bool? value) {
                        controller.isChecked.value = value!;
                      },
                    ),
                  ),
                  Text(
                    'Tentukan Deadline',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  )
                ],
              ),
              CardWistlist(
                  titleCard: "Harga", type: TextInputType.emailAddress),
            ],
          ),
        ),
      ),
      actions: [
        Padding(
          padding:
              const EdgeInsets.only(top: 50, bottom: 20, left: 18, right: 18),
          child: SizedBox(
            width: double.infinity,
            height: 42,
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF009688)),
                child: Text("Simpan",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Plus Jakarta Sans',
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                    ))),
          ),
        )
      ],
    );
  }
}
