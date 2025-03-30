import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/constant/color.dart';
import '../../core/constant/imageAssets.dart';
import '../../core/shared/CairoText.dart';

class CardItem extends StatelessWidget {
  const CardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327.w,
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.all(5.w),
            height: 147.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              gradient: LinearGradient(
                colors: [AppColor.gradblue2, AppColor.gradblue1],
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 34.h, right: 24.w),
                      width: 32.w,
                      height: 32.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: SvgPicture.asset(
                        AppImageAsset.bar_chart_4_bars_icon,
                        width: 16.w,
                        height: 15.h,
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 34.h, right: 12.w),
                      child: CairoText(text: 'أرباح اليوم', size: 20),
                    ),
                    SizedBox(width: 78.w),
                    Container(
                      margin: EdgeInsets.only(top: 35.h),
                      child: CairoText(text: '25 فاتورة', size: 16),
                    ),
                  ],
                ),
                SizedBox(height: 14.h),
                CairoText(text: '1.000.000 دينار عراقي', size: 18),
              ],
            ),
          ),
          Positioned(
            left: 23.83.w,
            top: -23.25.h,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 22.16.w,
                vertical: 33.25.h,
              ),
              child: Opacity(
                opacity: 0.1,
                child: Image.asset(
                  AppImageAsset.bar_chart_4_bars,
                  width: 221.w,
                  height: 199.h,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
