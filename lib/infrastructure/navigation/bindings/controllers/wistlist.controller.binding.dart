import 'package:get/get.dart';

import '../../../../presentation/wistlist/controllers/wistlist.controller.dart';

class WistlistControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WistlistController>(
      () => WistlistController(),
    );
  }
}
