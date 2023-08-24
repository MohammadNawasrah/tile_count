import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tile_count/home/homeController.dart';

void showDeleteDialog(homeId) {
  HomeController homeController = Get.find();
  Get.defaultDialog(
      middleText: "",
      title: "حذف المنزل",
      cancel: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: const Color.fromRGBO(102, 187, 106, 1)),
          child: const Text("الغاء"),
          onPressed: () {
            Get.back();
          }),
      confirm: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: const Color.fromARGB(
                255, 190, 41, 41), // Change this to the color you want
          ),
          child: const Text("تاكيد"),
          onPressed: () {
            homeController.removeHome(homeId);
            Get.back();
          }));
}
