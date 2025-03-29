import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zaki/core/constant/imageAssets.dart';
import 'package:zaki/view/widgets/drawerList.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 39.h, left: 62.w),
                    child: Image.asset(AppImageAsset.logo, width: 150.w),
                  ),
                  SizedBox(height: 53.h),

                  Expanded(
                    child: ListView.separated(
                      physics: AlwaysScrollableScrollPhysics(),

                      separatorBuilder:
                          (context, index) => SizedBox(height: 20),
                      itemCount: 8,
                      itemBuilder:
                          (context, item) => CustomMenuListItem(
                            text: 'الصفحة الرئيسية',
                            img: AppImageAsset.home,
                          ),
                    ),
                  ),
                ],
              ),
            );
  }
}