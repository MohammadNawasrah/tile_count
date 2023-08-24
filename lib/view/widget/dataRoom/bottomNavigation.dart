// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../dataRoom/dataRoomController.dart';

class BottomNavigtionCustom extends StatelessWidget {
  const BottomNavigtionCustom({super.key});

  @override
  Widget build(BuildContext context) {
    DataRoomController dataRoomController = Get.find();
    return Obx(() => BottomNavigationBar(
          currentIndex: dataRoomController.currentIndex.value,
          onTap: dataRoomController.changePage,
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.red,
          items: const [
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('asset/icons/floorWall.ico')),
              label: 'الجميع',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('asset/icons/floor.ico'),
              ),
              label: 'ارضيات',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('asset/icons/wall.ico'),
              ),
              label: 'حائط',
            ),
          ],
        ));
  }
}
