import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:zaki/core/constant/color.dart';
import 'package:zaki/core/shared/CairoText.dart';

class AddProductController extends GetxController {
  bool isinput = false;
  int counter = 1000;
  TextEditingController textEditingController = TextEditingController();
  static final List<Map<String, String>> items = [
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
  

  // static final List<String> states = [
  //   'طابعة ملصقات MOHD',
  //   'طابعة ملصقات MOHD',
  //   'طابعة ملصقات MOHD',
  //   'طابعة ملصقات MOHD',
  // ];
  // static List<String> getSuggestions(String query) {
  //   List<String> matches = [];
  //   matches.addAll(states);
  //   matches.retainWhere((e) => e.toLowerCase().contains(query.toLowerCase()));
  //   return matches;
  // }
  static List<String> getSuggestions(String query) {
    // First get all descriptions
    List<String> allDescriptions =
        items.map((item) => item['description'] ?? '').toList();

    if (query.isEmpty) {
      return allDescriptions;
    }

    return allDescriptions
        .where(
          (description) =>
              description.toLowerCase().contains(query.toLowerCase()),
        )
        .toList();
  }
}
