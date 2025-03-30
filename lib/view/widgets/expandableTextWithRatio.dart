import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:zaki/controller/expandablemenuontroller.dart';
import 'package:zaki/core/constant/color.dart';
import 'package:zaki/core/shared/CairoText.dart';

class ExpandableMenuScreen extends StatelessWidget {
  final String text;
  final String img;

  const ExpandableMenuScreen({
    super.key,
    required this.text,
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    Get.put(ExpandableMenuController());

    return GetBuilder<ExpandableMenuController>(
      builder:
          (controller) => Column(
            children: [
              InkWell(
                onTap: controller.toggleExpanded,
                child: Container(
                  height: 58.h,
                  margin: EdgeInsets.only(right: 18.w, left: 12.w, top: 8.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 42.w,
                        height: 42.h,
                        child: Center(child: SvgPicture.asset(img)),

                        decoration: BoxDecoration(
                          color: AppColor.light_blue,
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      SizedBox(width: 10.w),
                      CairoText(
                        text: text,
                        size: 14,
                        color: AppColor.black,
                        fontWeight: FontWeight.w700,
                      ),
                      Spacer(flex: 1),
                      Obx(
                        () => Icon(
                          controller.isExpanded.value
                              ? Icons.keyboard_arrow_up
                              : Icons.keyboard_arrow_down,
                          size: 20.w,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Obx(
                () =>
                    controller.isExpanded.value
                        ? Column(
                          children: [
                            SizedBox(height: 8.h),
                            _buildOptionItem(1, 'نقطة بيع 1', controller),
                            SizedBox(height: 8.h),
                            _buildOptionItem(2, 'نقطة بيع 2', controller),
                            SizedBox(height: 8.h),
                            _buildOptionItem(3, 'نقطة بيع 3', controller),
                          ],
                        )
                        : SizedBox.shrink(),
              ),
            ],
          ),
    );
  }

  Widget _buildOptionItem(int optionNumber, String title, controller) {
    bool isPaid = optionNumber > 1;

    return Container(
      margin: EdgeInsets.only(right: 50.w, left: 28.w, bottom: 8.h),
      child: InkWell(
        onTap: () => controller.selectOption(optionNumber),

        child: Row(
          children: [
            Obx(() {
              final isSelected =
                  controller.selectedOption.value == optionNumber;
              return Container(
                width: 12.w,
                height: 12.h,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.blue, width: 2.0),
                  color: isSelected ? Colors.blue : Colors.white,
                ),
              );
            }),
            SizedBox(width: 12.w),
            CairoText(text: title, size: 14, color: AppColor.black),
            const Spacer(),
            if (isPaid)
              Container(
                width: 28.w,
                height: 12.h,

                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(2.r),
                ),
                child: Center(
                  child: CairoText(
                    text: 'مدفوع',
                    size: 8,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
