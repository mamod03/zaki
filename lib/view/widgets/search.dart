import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zaki/core/shared/CairoText.dart';

class YourWidget extends StatelessWidget {
  final controller;
  
  const YourWidget({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 263.w,
      height: 40.h,
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      margin: EdgeInsets.only(top: 12.h, right: 8.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Expanded(
            child: controller.isinput
                ? TextFormField(
                    controller: controller.textEditingController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.zero,
                      isDense: true,
                      hintText: 'Search...',
                    ),
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                    onFieldSubmitted: (value) {
                      controller.isinput = false;
                      controller.update();
                    },
                  )
                : DropdownSearch<String>(
                    popupProps: PopupProps.menu(
                      showSearchBox: true,
                      searchFieldProps: TextFieldProps(
                        decoration: InputDecoration(
                          hintText: 'Search...',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      menuProps: MenuProps(
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                      ),
                    ),
                    items: controller.items
                        .map((item) => item['description'] ?? '')
                        .toList(),
                    selectedItem: controller.items.isNotEmpty
                        ? controller.items[0]['description'] ?? ''
                        : null,
                    onChanged: (value) {
                      if (value != null) {
                        // Update your controller with selected value
                        controller.updateSelectedItem(value);
                      }
                    },
                  
                    dropdownBuilder: (context, selectedItem) {
                      return CairoText(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        text: selectedItem ?? '',
                        size: 12,
                      );
                    },
                  ),
          ),
          IconButton(
            onPressed: () {
              // if (!controller.isinput) {
              //   // Toggle dropdown open/close
              //   final dropdownState = DropdownSearch.;
              //   if (dropdownState?.isMenuOpen ?? false) {
              //     dropdownState?.closeMenu();
              //   } else {
              //     dropdownState?.openMenu();
              //   }
              // } else {
              //   // Original text input toggle
              //   controller.isinput = !controller.isinput;
              //   controller.update();
              // }
            },
            icon: Icon(
              controller.isinput
                  ? Icons.keyboard_arrow_up_outlined
                  : Icons.keyboard_arrow_down_outlined,
              size: 20.w,
            ),
            padding: EdgeInsets.zero,
            constraints: BoxConstraints(),
          ),
        ],
      ),
    );
  }
}