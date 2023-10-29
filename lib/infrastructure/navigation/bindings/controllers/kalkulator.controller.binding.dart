import 'package:get/get.dart';

import '../../../../presentation/kalkulator/controllers/kalkulator.controller.dart';

class KalkulatorControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<KalkulatorController>(
      () => KalkulatorController(),
    );
  }
}
