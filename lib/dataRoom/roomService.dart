// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names
import 'package:get/get.dart';
import 'package:tile_count/dataRoom/roomModel.dart';
import '../core/database/crud.dart';

class RoomService {
  late List<Room> listRoom;
  CRUD crud = Get.put(CRUD());
  Future<List<Room>> fetchHomesFromDatabase() async {
    final List<Map<String, dynamic>> maps = await crud.getData("room");
    listRoom = List.generate(maps.length, (index) {
      return Room.fromJson(maps[index]);
    });
    // print(0542074587687527575);
    // print(listRoom[0].name);
    // listHome.sort((a, b) => b.homeId!.compareTo(a.homeId as num));
    return listRoom;
  }

  void removeHome(int id) {
    crud.deleteData("home", "homeId", id);
  }

  // void addHome() {
  //   Room room = Room(homeId: 100, name: "hi", roomId: 2);
  //   crud.insertDataO("room", room);
  // }
}
