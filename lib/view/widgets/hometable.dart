import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constant/color.dart';
import '../../core/constant/imageAssets.dart';
import '../../core/shared/CairoText.dart';
import 'iconInContainer.dart';

class HomeTable extends StatelessWidget {
  const HomeTable({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
      width: 327.w,
      height: 165.h,
      decoration: BoxDecoration(
        border: Border(top: BorderSide(color: AppColor.blue, width: 5.w)), // White top border
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(10.w),
        ),
      ),
      child: Column(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                IconInContainer(img: AppImageAsset.trending_up,color: AppColor.blue,),
                Container(
                    margin: EdgeInsets.only(top: 16.h, right: 12.w),

                    child: CairoText(text: 'طابعة', size: 14,color:AppColor.dark_grey)),
                Container(
                    margin: EdgeInsets.only(top: 16.h,right: 76.w),

                    child: CairoText(text: 'درزن', size: 16,color:AppColor.dark_grey)),
                Container(
                    margin: EdgeInsets.only(top: 16.h,right: 76.w),

                    child: CairoText(text: '5', size: 16,color:AppColor.dark_grey)),
              ],),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                IconInContainer(img: AppImageAsset.trending_up,color: AppColor.blue,),
                Container(
                    margin: EdgeInsets.only(top: 16.h, right: 12.w),

                    child: CairoText(text: 'طابعة', size: 14,color:AppColor.dark_grey)),
                Container(
                    margin: EdgeInsets.only(top: 16.h,right: 76.w),

                    child: CairoText(text: 'درزن', size: 16,color:AppColor.dark_grey)),
                Container(
                    margin: EdgeInsets.only(top: 16.h,right: 76.w),

                    child: CairoText(text: '5', size: 16,color:AppColor.dark_grey)),
              ],),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                IconInContainer(img: AppImageAsset.trending_up,color: AppColor.blue,),
                Container(
                    margin: EdgeInsets.only(top: 16.h, right: 12.w),

                    child: CairoText(text: 'طابعة', size: 14,color:AppColor.dark_grey)),
                Container(
                    margin: EdgeInsets.only(top: 16.h,right: 76.w),

                    child: CairoText(text: 'درزن', size: 16,color:AppColor.dark_grey)),
                Container(
                    margin: EdgeInsets.only(top: 16.h,right: 76.w),

                    child: CairoText(text: '5', size: 16,color:AppColor.dark_grey)),
              ],),
          ),
        ],
      ),
    );}
}
