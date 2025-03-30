import 'package:get/get.dart';

class ExpandableMenuController extends GetxController {
  final RxBool isExpanded = false.obs;
  final RxInt selectedOption = 1.obs;
  
  void toggleExpanded() {
    isExpanded.value = !isExpanded.value;
  }
  
  void selectOption(int option) {
    selectedOption.value = option;
  }
}