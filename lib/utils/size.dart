import 'package:flutter/material.dart';

class Responsive {
  static Size screenSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }
}