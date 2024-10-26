import 'package:get/get.dart';

class HomeController extends GetxController {
  var selectedIndex = 0.obs;

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

  void updateIndex(int index) {
    selectedIndex.value = index;
  }

}
