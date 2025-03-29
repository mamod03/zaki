import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zaki/core/constant/color.dart';
import 'package:zaki/core/constant/imageAssets.dart';
// Create a separate file for AppBar components, e.g., `custom_app_bar.dart`

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  const HomeAppBar({Key? key})
    : preferredSize = const Size.fromHeight(60.0),
      super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      toolbarHeight: 60,
      leading: const MenuButton(),
      actions: const [NotificationButton(), ProfileAvatar()],
    );
  }
}

class MenuButton extends StatelessWidget {
  const MenuButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40.w,
      height: 40.h,
      margin: EdgeInsets.only(right: 24.w),
      child: IconButton(
        onPressed: () => Scaffold.of(context).openDrawer(),
        icon: SvgPicture.asset(
          AppImageAsset.menu,
          width: 24.w,
          height: 24.h,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}

class NotificationButton extends StatelessWidget {
  const NotificationButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 17.w),
      child: Stack(
        children: [
          Container(
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
    );
  }
}

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 24.w),
      width: 40.w,
      height: 42.h,
      child: Image.asset(AppImageAsset.avatar, width: 40),
    );
  }
}
