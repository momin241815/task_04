import 'package:get/get.dart';

class BottomNavController extends GetxController {
  final index = 0.obs;

  void change(int i) {
    if (index.value == i) return;
    index.value = i;
  }
}