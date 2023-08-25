// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tile_count/dataRoom/roomService.dart';
import 'package:tile_count/view/screen/listHomeShow.dart';
import 'package:tile_count/view/widget/dataRoom/table.dart';

import '../../dataRoom/dataRoomController.dart';
import '../widget/dataRoom/bottomNavigation.dart';
import '../widget/dataRoom/floatActionButton.dart';
import '../widget/dataRoom/getPage.dart';

// ignore: must_be_immutable
class DataRoom extends StatelessWidget {
  int homeId;
  final DataRoomController dataRoomController = Get.put(DataRoomController());
  DataRoom({super.key, required this.homeId});
  RoomService roomService = Get.put(RoomService());

  @override
  Widget build(BuildContext context) {
    // roomService.addHome();
    roomService.fetchHomesFromDatabase();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Get.offAll(const ListHomeShow(), opaque: true);
          },
        ),
      ),
      floatingActionButton: const FloatActionButtons(),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 200, child: CustomTable()),
            Obx(() => Center(
                  child: getPage(dataRoomController.currentIndex.value),
                )),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavigtionCustom(),
    );
  }
}

class FavoritesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Favorites Screen'),
    );
  }
}

class AllTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Favorites Screen'),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Profile Screen'),
    );
  }
}
