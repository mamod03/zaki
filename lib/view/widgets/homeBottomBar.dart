import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:zaki/core/constant/color.dart';
import 'package:zaki/core/constant/imageAssets.dart';
import 'package:zaki/core/constant/routes.dart';

class HomeBottomBar extends StatelessWidget {
  const HomeBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.1,

      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: SvgPicture.asset(AppImageAsset.bottomhome),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset(AppImageAsset.bill),
            onPressed: () {},
          ),
          InkWell(
            onTap: () {
              Get.toNamed(AppRoute.addproduct);
            },
            child: Container(
              width: 45.w,
              height: 45.h,
              decoration: BoxDecoration(
                color: AppColor.blue,
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.add, color: Colors.white),
            ),
          ),
          IconButton(
            icon: SvgPicture.asset(AppImageAsset.scan),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset(AppImageAsset.person),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
