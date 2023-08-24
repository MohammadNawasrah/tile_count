// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:get/get.dart';

class DataRoomController extends GetxController {
  var currentIndex = 0.obs;

  void changePage(int index) {
    currentIndex.value = index;
  }
}
