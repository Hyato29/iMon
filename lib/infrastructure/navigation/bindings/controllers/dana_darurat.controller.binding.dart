import 'package:get/get.dart';

import '../../../../presentation/dana_darurat/controllers/dana_darurat.controller.dart';

class DanaDaruratControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DanaDaruratController>(
      () => DanaDaruratController(),
    );
  }
}
