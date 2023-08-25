import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tile_count/home/homeController.dart';
import 'package:tile_count/view/widget/customTextForm.dart';

void showAddHomeDialog() {
  HomeController homeController = Get.find();
  Get.defaultDialog(
    cancel: ElevatedButton(
        style: ElevatedButton.styleFrom(
          // ignore: deprecated_member_use
          primary: Colors.green[400], // Change this to the color you want
        ),
        onPressed: () {
          Get.back();
        },
        child: const Text("الغاء")),
    confirm: ElevatedButton(
        style: ElevatedButton.styleFrom(
          // ignore: deprecated_member_use
          primary: Colors.red[400], // Change this to the color you want
        ),
        onPressed: () {
          homeController.addHome();
          Get.back();
        },
        child: const Text("اضافة")),
    content: Column(
      children: [
        CustomTextFormAuth(
            justnumber: false,
            hint: "اسم المنزل",
            textController: homeController.homeName),
        const SizedBox(
          height: 10,
        ),
        CustomTextFormAuth(
            justnumber: true,
            hint: "سعر المتر",
            textController: homeController.priceAll),
      ],
    ),
  );
}
