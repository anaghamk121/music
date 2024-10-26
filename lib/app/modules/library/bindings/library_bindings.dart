import 'package:get/get.dart';

import '../controllers/library_controller.dart';

class MusicBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MusicController>(
      () => MusicController(),
    );
  }
}
