import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:zaki/controller/addproductController.dart';
import 'package:zaki/core/constant/color.dart';
import 'package:zaki/core/shared/CairoText.dart';

class Testview extends GetView<AddProductController> {
  const Testview({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(AddProductController());
    controller.textEditingController.text =
        AddProductController.items[0]['description'].toString();
    controller.update();
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: TypeAheadField<String>(
            builder: (context, textEditingController, focusNode) {
              return TextField(
                controller: textEditingController,

                // autofocus: true,
                focusNode: focusNode,
                decoration: InputDecoration(
                  // border:Inputbor 
                  // enabled: false,
                  // enabledBorder: UnderlineInputBorder(),
                  // border: UnderlineInputBorder(),
                ),
              );
            },
            itemBuilder: (context, suggestion) {
              return ListTile(
                title: CairoText(
                  text: suggestion,
                  size: 12,
                  color: AppColor.black,
                  fontWeight: FontWeight.w400,
                ),
                leading: CairoText(
                  text: '150',
                  size: 12,
                  color: AppColor.black,
                  fontWeight: FontWeight.w400,
                ),
                trailing: CairoText(
                  text: '450.000 د.ع',
                  size: 10,
                  color: AppColor.black,
                ),
              );
            },
            onSelected: (suggestion) {
              controller.textEditingController.text = suggestion;
              controller.isinput = false;
              controller.update();
            },
            suggestionsCallback: (String search) {
              return AddProductController.getSuggestions(search);
            },
          ),
        ),
      ),
    );
  }
}
