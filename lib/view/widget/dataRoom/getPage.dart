// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names
import 'package:flutter/material.dart';

import '../../../test.dart';

Widget getPage(int index) {
  switch (index) {
    case 0:
      return FavoritesScreen();
    case 1:
      return ProfileScreen();
    default:
      return AllTile();
  }
}
