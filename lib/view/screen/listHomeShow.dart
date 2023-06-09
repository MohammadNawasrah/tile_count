// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/database/crud.dart';

class ListHomeShow extends StatelessWidget {
  const ListHomeShow({super.key});

  @override
  Widget build(BuildContext context) {
    CRUD crud = Get.put(CRUD());
    crud.insertData("home", {"nameHome ": "hh", "priceAll ": 20});
    print(crud.getData("home"));
    // crud.getData();
    return Scaffold();
  }
}
