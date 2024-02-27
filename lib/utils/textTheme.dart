import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_do_list/utils/color.dart';

TextStyle tTextStyleBoldBlack(double size) {
  return GoogleFonts.arimaMadurai(
    textStyle: TextStyle(
      fontSize: size,
      letterSpacing: 0.5,
      color: AppColor.black,
      fontWeight: FontWeight.bold,
    )
  );
}