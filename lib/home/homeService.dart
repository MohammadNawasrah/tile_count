// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names
import 'package:get/get.dart';
import '../core/database/crud.dart';
import 'homeModel.dart';

class HomeService {
  late List<Home> listHome;
  CRUD crud = Get.put(CRUD());
  Future<List<Home>> fetchHomesFromDatabase() async {
    final List<Map<String, dynamic>> maps = await crud.getData("home");
    listHome = List.generate(maps.length, (index) {
      return Home.fromMap(maps[index]);
    });
    listHome.sort((a, b) => b.homeId!.compareTo(a.homeId as num));
    return listHome;
  }

  void removeHome(int id) {
    crud.deleteData("home", "homeId", id);
  }

  void addHome(Home home) {
    crud.insertData(
        "home", {"nameHome": home.nameHome, "priceAll": home.priceAll});
  }
}
