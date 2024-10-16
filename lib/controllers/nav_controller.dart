import 'package:get/get.dart';

class BottomNavController extends GetxController {

  // Observable variable for current tab index
  var selectedIndex = 0.obs;

  // Method to change the index
  void changeTabIndex(int index) {
    selectedIndex.value = index;
  }


}