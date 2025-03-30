import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:get/get.dart';
import 'package:zaki/controller/addproductController.dart';
import 'package:zaki/core/constant/color.dart';
import 'package:zaki/core/shared/CairoText.dart';

class SearchText extends GetView<AddProductController> {
  AddProductController controller;
  SearchText({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
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
                  enabled: controller.isinput,
                  border: OutlineInputBorder(),
                  label: CairoText(
                    text: controller.textEditingController.text,
                    size: 12,
                    color: AppColor.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              );
            },
            itemBuilder: (context, suggestion) {
              return ListTile(title: Text(suggestion));
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
