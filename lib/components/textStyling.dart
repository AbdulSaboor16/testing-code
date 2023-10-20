import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test/auth/dynamicColor.dart';

hkGrotestStyle(
    {double? fontSize,
    color,
    fontWeight,
    double? latterSpacing,
    Paint? gradient,
    lineThrough = TextDecoration.none}) {
  return GoogleFonts.hankenGrotesk(
      textStyle: TextStyle(
          fontSize: fontSize ?? 18,
          color: color == null && gradient == null
              ? DynamicColor.whiteColor
              : color,
          fontWeight: fontWeight ?? FontWeight.w500,
          letterSpacing: latterSpacing ?? 1,
          decoration: lineThrough,
          foreground: gradient));
}
