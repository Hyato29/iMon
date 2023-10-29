import 'package:get/get.dart';

import '../../../../presentation/dana_pensiun/controllers/dana_pensiun.controller.dart';

class DanaPensiunControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DanaPensiunController>(
      () => DanaPensiunController(),
    );
  }
}
