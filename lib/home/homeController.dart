// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:tile_count/home/homeService.dart';

import 'homeModel.dart';

class HomeController extends GetxController {
  TextEditingController homeName = TextEditingController();
  TextEditingController priceAll = TextEditingController();
  HomeService homeService = Get.put(HomeService());
  Future<List<Home>> fetchHomesFromDatabase() async {
    return homeService.fetchHomesFromDatabase();
  }

  void removeHome(int id) {
    homeService.removeHome(id);
    update();
  }

  void addHome() {
    if (priceAll.text == "" || homeName.text == "") {
      priceAll.text = "0";
      homeName.text = "بدون اسم";
    }
    Home home = Home(
        homeId: 0,
        nameHome: homeName.text,
        priceAll: double.parse(priceAll.text));
    homeService.addHome(home);
    homeName.text = "";
    priceAll.text = "";
    update();
  }
}
