
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:ngitengs/infrastructure/navigation/routes.dart';


class KalkulatorController extends GetxController {
  final count = 0.obs;
  final box = GetStorage();

  var inputValue = ''.obs;


  TextEditingController jumInvesController = TextEditingController();
  TextEditingController waktuPengumpulanController = TextEditingController();
  TextEditingController uangSaatiniController = TextEditingController();
  TextEditingController invesReturnController = TextEditingController();
  TextEditingController targetInvestController = TextEditingController();

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

  void calculator() {
    try {
      int jumInves = int.tryParse(jumInvesController.value.text) ?? 0;
      int waktuPengumpulan =
          int.tryParse(waktuPengumpulanController.value.text) ?? 0;
      int uangSaatIni = int.tryParse(uangSaatiniController.value.text) ?? 0;
      int investReturn = int.tryParse(invesReturnController.value.text) ?? 0;

      double hitung = (jumInves / waktuPengumpulan) - uangSaatIni;
      double total = hitung * investReturn;
      int result = total.toInt();

      box.write('hasil', result.toString());
      box.write('uang', uangSaatIni.toString());

      Get.offNamed(Routes.RESULT_KALKULATOR);
    } catch (e) {
      // Tangani kesalahan saat parsing di sini (misalnya, tampilkan pesan kesalahan).
      print('Terjadi kesalahan: $e');
    }
  }

  void increment() => count.value++;
}
