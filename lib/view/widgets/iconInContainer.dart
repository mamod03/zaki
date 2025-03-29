import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';


class IconInContainer extends StatelessWidget {
  final String img;
  Color? color;
  Color? iconColor;

  IconInContainer({super.key, required this.img,this.color,this.iconColor});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.only(top: 16.h, right: 24.w),
      width: 32.w,
      height: 32.h,
      decoration: BoxDecoration(
        color: color??Colors.white,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: SvgPicture.asset(
        img,
        width: 16.w,
        height: 15.h,
        fit: BoxFit.scaleDown,
        color: iconColor,
      ),
    );
  }
}
