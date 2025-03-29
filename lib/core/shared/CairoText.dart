import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CairoText extends StatelessWidget {
  final String text;
  final int size;
  Color? color;
  FontWeight? fontWeight;
  TextAlign? textAlign;
  CairoText({
    super.key,
    required this.text,
    required this.size,
    this.color,
    this.fontWeight,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,

      textAlign: textAlign,
      style: TextStyle(
        color: color ?? Colors.white,
        fontFamily: 'Cairo',
        fontWeight: fontWeight ?? FontWeight.w700,
        fontSize: size.w,
      ),
    );
  }
}
