import 'package:flutter/material.dart';

extension HexColor on Color {
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}

class AppColor {
  static Color dark_grey = HexColor.fromHex('#636363');
  static Color light_grey = const Color.fromARGB(1, 247, 247, 247);
  static Color blue = HexColor.fromHex('#3BADFC');
  static Color light_blue = const Color.fromARGB(255, 187, 234, 255);
  static Color black = HexColor.fromHex('#000000');
  static Color red = HexColor.fromHex('#FE2E2E');
  static Color green = HexColor.fromHex('#34A853');
  static Color yellow = HexColor.fromHex('#FBBC05');
  static Color gradblue1 = HexColor.fromHex('#59D4FE');
  static Color gradblue2 = HexColor.fromHex('#0196FD');
  static Color brigth_white = Color.fromARGB(1, 255, 255, 255);
}
