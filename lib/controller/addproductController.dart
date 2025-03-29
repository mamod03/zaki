import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AddProductController extends GetxController {
  bool isinput = false;
  int counter = 1000;
  TextEditingController textEditingController = TextEditingController();
  final List<Map<String, String>> items = [
    {
      "price": "450.000 د.ع",
      "description": "طابعة ملصقات MOHD",
      "quantity": "150",
    },
    {
      "price": "450.000 د.ع",
      "description": "طابعة ملصقات MOHD",
      "quantity": "150",
    },
    {
      "price": "450.000 د.ع",
      "description": "طابعة ملصقات MOHD",
      "quantity": "150",
    },
    {
      "price": "450.000 د.ع",
      "description": "طابعة ملصقات MOHD",
      "quantity": "150",
    },
  ];
}
