import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zaki/core/constant/color.dart';

class CustomMenuListItem extends StatelessWidget {
  final String text;
  final String img;
  
  const CustomMenuListItem({super.key, required this.text, required this.img});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      child: Row(
        children: [
          Stack(
            children: [
              Container(
                width: 42,
                height: 42,
                decoration: BoxDecoration(
                  color: AppColor.light_blue,

                  borderRadius: BorderRadius.circular(8),
                ),
              ),

              Positioned(
                left: 5,
                right: 5,
                top: 10,
                child: SvgPicture.asset(img),
              ),
            ],
          ),
          SizedBox(width: 10),
          Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 16.w,
              fontFamily: 'Cairo',
            ),
          ),
        ],
      ),
    );
  }
}
