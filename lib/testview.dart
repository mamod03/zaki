import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'core/constant/color.dart';
import 'core/constant/imageAssets.dart';
import 'core/shared/CairoText.dart';

class InfiniteHorizontalScroll extends StatefulWidget {
  @override
  _InfiniteHorizontalScrollState createState() => _InfiniteHorizontalScrollState();
}

class _InfiniteHorizontalScrollState extends State<InfiniteHorizontalScroll> {
  final ScrollController _scrollController = ScrollController();
  final int itemCount = 1000; // A large number to simulate infinity
  final int realItemCount = 3; // The actual number of unique items you have

  @override
  void initState() {
    super.initState();
    // Start in the middle to allow scrolling in both directions
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollController.jumpTo(
        _scrollController.position.maxScrollExtent / 2,
      );
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  Widget _buildItem(int index) {
    // Use modulo to cycle through your real items
    final actualIndex = index % realItemCount;
    return Container(
      width: 327.w, // Make sure to set width for horizontal ListView items
      margin: EdgeInsets.only(left: 24.w, top: 10.h),
      child: Stack(
        children: [
          Container(
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
            left: -23.83.w,
            top: 23.25.h,
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

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: _scrollController,
      scrollDirection: Axis.horizontal,
      itemCount: itemCount,
      itemBuilder: (context, index) {
        return _buildItem(index);
      },
    );
  }
}