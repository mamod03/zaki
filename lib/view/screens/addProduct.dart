import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:zaki/controller/addproductController.dart';
import 'package:zaki/core/constant/color.dart';
import 'package:zaki/core/constant/imageAssets.dart';
import 'package:zaki/core/shared/CairoText.dart';

class AddProduct extends StatelessWidget {
  const AddProduct({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(AddProductController());
    return GetBuilder<AddProductController>(
      builder:
          (controller) => Scaffold(
            appBar: AppBar(
              actionsPadding: EdgeInsets.only(left: 24.w),
              leading: Container(
                margin: EdgeInsets.only(right: 24.w),
                child: Center(
                  child: IconButton(
                    onPressed: () => Get.back(),
                    icon: Icon(
                      Icons.arrow_back_ios_sharp,
                      color: AppColor.black,
                    ),
                  ),
                ),
              ),
              centerTitle: true,
              backgroundColor: Colors.white,
              toolbarHeight: 60,
              title: CairoText(
                text: 'إضافة مواد الفاتورة',
                size: 20,
                color: AppColor.black,
              ),
              actions: [
                Card(
                  color: Colors.white,
                  elevation: 0.1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Container(
                    width: 30.w,
                    height: 30.h,
                    child: Center(
                      child: Stack(
                        children: [
                          Positioned(
                            top: 1.w,
                            right: 5.w,
                            child: Container(
                              decoration: BoxDecoration(
                                color: AppColor.light_grey,
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              width: 24.w,
                              height: 24.h,
                              child: SvgPicture.asset(
                                AppImageAsset.notification,
                                color: AppColor.dark_grey,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 6.h,
                            // left: 24.w,
                            child: Container(
                              width: 8.w,
                              height: 8.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.w),
                                boxShadow: [
                                  BoxShadow(
                                    color: AppColor.red,
                                    spreadRadius: 0,
                                    blurRadius: 0.1,
                                  ),
                                ],
                              ),
                              child: SvgPicture.asset(
                                AppImageAsset.activedot,
                                fit: BoxFit.scaleDown,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),

            body: Container(
              margin: EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(
                children: [
                  Container(
                    width: 327.w,
                    height: 101.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      color: Colors.black12,
                    ),
                    margin: EdgeInsets.only(top: 52.h),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 12.h, right: 8.w),
                              width: 40.w,
                              height: 40.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.r),
                                color: Colors.white,
                              ),
                              child: Center(
                                child: CairoText(
                                  text: '150',
                                  size: 16,
                                  color: AppColor.black,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Container(
                              width: 263.w,
                              height: 40.h,
                              padding: EdgeInsets.symmetric(
                                horizontal: 8.w,
                              ), // More balanced padding
                              margin: EdgeInsets.only(top: 12.h, right: 8.w),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.r),
                                color: Colors.white,
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child:
                                        controller.isinput
                                            ? TextFormField(
                                              controller:
                                                  controller
                                                      .textEditingController,
                                              decoration: InputDecoration(
                                                border: InputBorder.none,
                                                contentPadding: EdgeInsets.zero,
                                                isDense: true,
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
                                            : CairoText(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w400,
                                              text:
                                                  controller.items.isNotEmpty
                                                      ? controller
                                                              .items[0]['description'] ??
                                                          ''
                                                      : '',
                                              size: 12,
                                            ),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      controller.isinput = !controller.isinput;
                                      if (controller.isinput) {
                                        controller.textEditingController.text =
                                            controller.items.isNotEmpty
                                                ? controller
                                                        .items[0]['description'] ??
                                                    ''
                                                : '';
                                      }
                                      controller.update();
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
                            ),
                          ],
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(
                              top: 13.h,
                              left: 8.w,
                              right: 8.w,
                              bottom: 14.h,
                            ),
                            child: Row(
                              children: [
                                CairoText(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  text: 'السعر: ',
                                  size: 12,
                                ),
                                CairoText(
                                  color: Colors.black,
                                  text: '${controller.items[0]['price']}',
                                  size: 12,
                                ),
                                Spacer(flex: 1),
                                Container(
                                  width: 20.w,
                                  height: 20.w,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppColor.blue,
                                  ),
                                  child: Material(
                                    type: MaterialType.transparency,
                                    child: InkWell(
                                      borderRadius: BorderRadius.circular(10.w),
                                      onTap: () {
                                        controller.counter++;
                                        controller.update();
                                      },
                                      child: Center(
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                          size: 14.w,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 5.w),
                                  child: CairoText(
                                    text: '${controller.counter}',
                                    size: 12,
                                    fontWeight: FontWeight.w500,
                                    color: AppColor.black,
                                  ),
                                ),
                                Container(
                                  width: 20.w,
                                  height: 20.w,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppColor.blue,
                                  ),
                                  child: Material(
                                    type: MaterialType.transparency,
                                    child: InkWell(
                                      borderRadius: BorderRadius.circular(10.w),
                                      onTap: () {
                                        controller.counter--;
                                        controller.update();
                                      },
                                      child: Center(
                                        child: Icon(
                                          Icons.remove,
                                          color: Colors.white,
                                          size: 14.w,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
    );
  }
}
