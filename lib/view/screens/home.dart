import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zaki/controller/homepageController.dart';
import 'package:zaki/core/constant/color.dart';
import 'package:zaki/view/widgets/homeAppBar.dart';
import 'package:zaki/view/widgets/homeBottomBar.dart';
import 'package:zaki/view/widgets/homeDrawer.dart';
import 'package:zaki/view/widgets/homebody.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomePageController());
    return GetBuilder<HomePageController>(
      builder:
          (controller) => Scaffold(
            backgroundColor: Colors.white,

            bottomNavigationBar: BottomAppBar(
              color: AppColor.brigth_white,
              height: 80.h,
              notchMargin: 8,
              child: HomeBottomBar(),
            ),

            drawer: HomeDrawer(),
            appBar: HomeAppBar(),
            body: SingleChildScrollView(
              child: HomeBody(controller: controller),
            ),
          ),
    );
  }
}
