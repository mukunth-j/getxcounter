import 'package:get/get.dart';

class MainController extends GetxController {
  var count = 0.obs;
  void myIncrement() {
    count++;
  }

  void myDecrement() {
    count--;
  }
}
