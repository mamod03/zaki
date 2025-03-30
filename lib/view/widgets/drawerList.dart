import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:zaki/core/constant/color.dart';
import 'package:zaki/core/shared/CairoText.dart';

class CustomMenuListItem extends StatelessWidget {
  final String text;
  final String img;

  const CustomMenuListItem({super.key, required this.text, required this.img});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 235.w,
      height: 58.h,
      margin: EdgeInsets.only(right: 18.w, top: 8.h),
      child: Row(
        children: [
          Stack(
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
            ],
          ),
          SizedBox(width: 10.w),
          CairoText(
            text: text,
            size: 14,
            color: AppColor.black,
            fontWeight: FontWeight.w700,
          ),
        ],
      ),
    );
  }
}
