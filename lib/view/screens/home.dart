import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:zaki/controller/homepageController.dart';
import 'package:zaki/core/constant/color.dart';
import 'package:zaki/core/constant/imageAssets.dart';
import 'package:zaki/core/constant/routes.dart';
import 'package:zaki/core/shared/CairoText.dart';
import 'package:zaki/view/widgets/cardItem.dart';
import 'package:zaki/view/widgets/homeAppBar.dart';
import 'package:zaki/view/widgets/homeDrawer.dart';
import 'package:zaki/view/widgets/iconInContainer.dart';

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
              child: Card(
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
              ),
            ),

            drawer: HomeDrawer(),
            appBar: HomeAppBar(),
            body: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(right: 24.w, left: 24.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 20.h),

                    SizedBox(
                      height: 165.h,
                      child: PageView.builder(
                        controller: controller.pagecontroller,
                        itemCount: 3,

                        itemBuilder: (context, index) => CardItem(),
                      ),
                    ),
                    SmoothPageIndicator(
                      controller: controller.pagecontroller,
                      count: 3,
                      effect: ExpandingDotsEffect(
                        dotColor: Color.fromARGB(70, 59, 173, 252),
                        activeDotColor: AppColor.blue,
                        dotHeight: 16,
                        dotWidth: 16,
                      ),
                    ),
                    SizedBox(height: 24.h),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CairoText(
                          text: 'الأكثر مبيعاً',
                          size: 18,
                          color: AppColor.black,
                        ),
                        CairoText(
                          text: 'عرض الجميع',
                          size: 14,
                          color: AppColor.dark_grey,
                        ),
                      ],
                    ),
                    SizedBox(height: 24.h),

                    Card(
                      color: Colors.white,
                      elevation: 0.1,

                      child: Container(
                        width: 327.w,
                        height: 165.h,
                        decoration: BoxDecoration(
                          border: Border(
                            top: BorderSide(color: AppColor.blue, width: 5.w),
                          ),
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(10.w),
                          ),
                        ),
                        child: Column(
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  IconInContainer(
                                    img: AppImageAsset.trending_up,
                                    color: AppColor.blue,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                      top: 16.h,
                                      right: 12.w,
                                    ),

                                    child: CairoText(
                                      text: 'طابعة',
                                      size: 14,
                                      color: AppColor.dark_grey,
                                    ),
                                  ),
                                  Spacer(flex: 1),
                                  Container(
                                    margin: EdgeInsets.only(top: 16.h),
                                    alignment: Alignment.center,
                                    child: CairoText(
                                      text: 'درزن',
                                      size: 16,
                                      color: AppColor.dark_grey,
                                    ),
                                  ),
                                  Spacer(flex: 1),
                                  Expanded(
                                    child: Container(
                                      margin: EdgeInsets.only(
                                        top: 16.h,
                                        left: 16.w,
                                      ),

                                      child: CairoText(
                                        text: '5',
                                        size: 16,
                                        color: AppColor.dark_grey,
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  IconInContainer(
                                    img: AppImageAsset.trending_up,
                                    color: AppColor.blue,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                      top: 16.h,
                                      right: 12.w,
                                    ),

                                    child: CairoText(
                                      text: 'طابعة',
                                      size: 14,
                                      color: AppColor.dark_grey,
                                    ),
                                  ),
                                  Spacer(flex: 1),
                                  Container(
                                    margin: EdgeInsets.only(top: 16.h),
                                    alignment: Alignment.center,
                                    child: CairoText(
                                      text: 'قطعة',
                                      size: 16,
                                      color: AppColor.dark_grey,
                                    ),
                                  ),
                                  Spacer(flex: 1),
                                  Expanded(
                                    child: Container(
                                      margin: EdgeInsets.only(
                                        top: 16.h,
                                        left: 16.w,
                                      ),

                                      child: CairoText(
                                        text: '25',
                                        size: 16,
                                        color: AppColor.dark_grey,
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  IconInContainer(
                                    img: AppImageAsset.trending_up,
                                    color: AppColor.blue,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                      top: 16.h,
                                      right: 12.w,
                                    ),

                                    child: CairoText(
                                      text: 'طابعة',
                                      size: 14,
                                      color: AppColor.dark_grey,
                                    ),
                                  ),
                                  Spacer(flex: 1),
                                  Container(
                                    margin: EdgeInsets.only(top: 16.h),
                                    alignment: Alignment.center,
                                    child: CairoText(
                                      text: 'كرتون',
                                      size: 16,
                                      color: AppColor.dark_grey,
                                    ),
                                  ),
                                  Spacer(flex: 1),
                                  Expanded(
                                    child: Container(
                                      margin: EdgeInsets.only(
                                        top: 16.h,
                                        left: 16.w,
                                      ),

                                      child: CairoText(
                                        text: '1000',
                                        size: 16,
                                        color: AppColor.dark_grey,
                                        textAlign: TextAlign.left,
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

                    SizedBox(height: 24.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CairoText(
                          text: 'الفواتير السابقة',
                          size: 18,
                          color: AppColor.black,
                        ),
                        CairoText(
                          text: 'عرض الجميع',
                          size: 14,
                          color: AppColor.dark_grey,
                        ),
                      ],
                    ),
                    SizedBox(height: 24.h),

                    Card(
                      elevation: 0.1,
                      color: Colors.white,
                      child: Container(
                        width: 327.w,
                        height: 170.h,
                        decoration: BoxDecoration(
                          border: Border(
                            top: BorderSide(color: AppColor.blue, width: 5.w),
                          ),
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(10.w),
                          ),
                        ),
                        child: Column(
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  IconInContainer(
                                    img: AppImageAsset.trending_up,
                                    color: AppColor.blue,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                      top: 16.h,
                                      right: 12.w,
                                    ),

                                    child: CairoText(
                                      text: 'حازم لؤي الشيخ سعيد',
                                      size: 14,
                                      color: AppColor.dark_grey,
                                    ),
                                  ),
                                  Spacer(flex: 1),

                                  Container(
                                    margin: EdgeInsets.only(
                                      top: 16.h,
                                      left: 16.w,
                                    ),

                                    child: CairoText(
                                      text: '32 د.ع',
                                      size: 16,
                                      color: AppColor.dark_grey,
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  IconInContainer(
                                    img: AppImageAsset.trending_up,
                                    color: AppColor.blue,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                      top: 16.h,
                                      right: 12.w,
                                    ),

                                    child: CairoText(
                                      text: 'محمد سبحاني',
                                      size: 14,
                                      color: AppColor.dark_grey,
                                    ),
                                  ),
                                  Spacer(flex: 1),

                                  Container(
                                    margin: EdgeInsets.only(
                                      top: 16.h,
                                      left: 16.w,
                                    ),

                                    child: CairoText(
                                      text: '32 د.ع',
                                      size: 16,
                                      color: AppColor.dark_grey,
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  IconInContainer(
                                    img: AppImageAsset.trending_up,
                                    color: AppColor.blue,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                      top: 16.h,
                                      right: 12.w,
                                    ),

                                    child: CairoText(
                                      text: 'علي سليمان',
                                      size: 14,
                                      color: AppColor.dark_grey,
                                    ),
                                  ),
                                  Spacer(flex: 1),

                                  Container(
                                    margin: EdgeInsets.only(
                                      top: 16.h,
                                      left: 16.w,
                                    ),

                                    child: CairoText(
                                      text: '32 د.ع',
                                      size: 16,
                                      color: AppColor.dark_grey,
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(height: 24.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CairoText(
                          text: 'السندات',
                          size: 18,
                          color: AppColor.black,
                        ),
                        CairoText(
                          text: 'عرض الجميع',
                          size: 14,
                          color: AppColor.dark_grey,
                        ),
                      ],
                    ),
                    SizedBox(height: 24.h),

                    Card(
                      color: Colors.white,
                      elevation: 0.1,

                      child: Container(
                        width: 327.w,
                        height: 165.h,
                        decoration: BoxDecoration(
                          border: Border(
                            top: BorderSide(color: AppColor.blue, width: 5.w),
                          ),
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(10.r),
                          ),
                        ),
                        child: Container(
                          margin: EdgeInsets.only(top: 12.h),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CairoText(
                                text: 'لا يوجد سندات!',
                                size: 14,
                                color: AppColor.dark_grey,
                              ),
                              Container(
                                height: 120.h,
                                child: SvgPicture.asset(
                                  AppImageAsset.EmptyState,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 24.h),
                  ],
                ),
              ),
            ),
          ),
    );
  }
}
