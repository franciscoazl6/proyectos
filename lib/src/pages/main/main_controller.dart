import 'package:get/get.dart';

class MainController extends GetxController{
  void goToInfoPage() {
    Get.toNamed('/info');
  }
  void goToDataPage() {
    Get.toNamed('/data');
  }
}