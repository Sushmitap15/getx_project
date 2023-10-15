import 'package:get/get.dart';

class HomePageController extends GetxController {
  //observable from getx controller which automatically updates when changes occur
  final count = 0.obs;
  increment() => count.value++;
  decrement()=> count.value--;
}


