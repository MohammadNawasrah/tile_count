// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names
import 'package:flutter/material.dart';

class ScreenSize {
  static double widthScreen(context) {
    return MediaQuery.of(context).size.width;
  }

  static double heightScreen(context) {
    return MediaQuery.of(context).size.height;
  }
}
