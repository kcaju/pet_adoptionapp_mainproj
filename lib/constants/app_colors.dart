import 'dart:math';

import 'package:flutter/material.dart';

abstract class Palette {
  static const Color primary = Color(0xffFCE900);
  static const Color green = Color(0xff3F704D);
  static const Color green1 = Color(0xff80EF80);
  static const Color mainblack = Color(0xff000000);
  static const Color mainWhite = Color(0xffFFFFFF);
  static const Color yellow = Colors.yellow;
  static const Color blueGrey = Colors.blueGrey;
  static const Color grey = Colors.grey;
  static const Color amber = Colors.amber;
  static const Color red = Color(0xffFF0000);
  static const Color brown = Color(0xff402637);
  static const Color blue1 = Color(0xff7756BF);
  static const Color blue2 = Color(0xff5E4BA6);
  static const Color blue3 = Color(0xff282B59);
  static const Color blue4 = Color(0xff494C8C);
  static const Color blue5 = Color(0xff2E4052);

  static const Color scaffoldBackgroundColor = Color(0xffFFFFFF);
}

MaterialColor generateMaterialColor(Color color) {
  return MaterialColor(color.value, {
    50: tintColor(color, 0.9),
    100: tintColor(color, 0.8),
    200: tintColor(color, 0.6),
    300: tintColor(color, 0.4),
    400: tintColor(color, 0.2),
    500: color,
    600: shadeColor(color, 0.1),
    700: shadeColor(color, 0.2),
    800: shadeColor(color, 0.3),
    900: shadeColor(color, 0.4),
  });
}

int tintValue(int value, double factor) {
  return max(0, min((value + ((255 - value) * factor)).round(), 255));
}

Color tintColor(Color color, double factor) {
  return Color.fromRGBO(
    tintValue(color.red, factor),
    tintValue(color.green, factor),
    tintValue(color.blue, factor),
    1,
  );
}

int shadeValue(int value, double factor) {
  return max(0, min(value - (value * factor).round(), 255));
}

Color shadeColor(Color color, double factor) {
  return Color.fromRGBO(
    shadeValue(color.red, factor),
    shadeValue(color.green, factor),
    shadeValue(color.blue, factor),
    1,
  );
}
