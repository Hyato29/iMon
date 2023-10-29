import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DanaPensiunController extends GetxController {
  //TODO: Implement DanaPensiunController

  TextEditingController pengeluaranController = TextEditingController();
  TextEditingController usiaPensiunController = TextEditingController();
  TextEditingController usiaSaatiniController = TextEditingController();
  TextEditingController danaPensiunController = TextEditingController();
  TextEditingController targetInvestController = TextEditingController();

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
