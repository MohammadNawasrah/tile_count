import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tile_count/view/widget/customButton.dart';
import 'package:tile_count/view/widget/customTextForm.dart';
import 'package:tile_count/view/widget/dataRoom/table.dart';

class HomeController extends GetxController {
  var currentIndex = 0.obs;

  void changePage(int index) {
    currentIndex.value = index;
  }
}

// ignore: use_key_in_widget_constructors
class BottomNavigationBarExample extends StatelessWidget {
  final HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    TextEditingController textEditingController = TextEditingController();
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.defaultDialog(
              content: Column(
                children: [
                  Row(children: [
                    Expanded(
                      child: DropdownButtonFormField<String>(
                        value: "floor",
                        decoration: InputDecoration(
                          hintText: "اختر نوع الغرفه",
                          hintStyle: const TextStyle(fontSize: 15),
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 50),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        items: const [
                          DropdownMenuItem(
                            value: 'floor',
                            child: Text('ارضيات'),
                          ),
                          DropdownMenuItem(
                            value: 'wall',
                            child: Text('حائط'),
                          ),
                        ],
                        onChanged: (value) {
                          // Handle dropdown value change
                        },
                      ),
                    ),
                  ]),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(children: [
                    Expanded(
                      child: CustomTextFormAuth(
                          hint: "عرض",
                          justnumber: true,
                          textController: textEditingController),
                    ),
                    Expanded(
                      child: CustomTextFormAuth(
                          hint: "طول",
                          justnumber: true,
                          textController: textEditingController),
                    )
                  ]),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextFormAuth(
                    hint: "اسم الغرفة",
                    justnumber: false,
                    textController: textEditingController,
                    widthCutom: MediaQuery.of(context).size.width,
                  )
                ],
              ),
              title: "اضافة غرفة",
              cancel: CustomButton(
                  buttonColor: Colors.blue,
                  buttonText: "الغاء",
                  onPress: () {
                    Get.back();
                  }),
              confirm: CustomButton(
                  buttonColor: Colors.red,
                  buttonText: "تاكيد",
                  onPress: () {
                    Get.back();
                  }));
        },
        backgroundColor: Colors.black,
        child: const Icon(Icons.add),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 200, child: CustomTable()),
            Obx(() => Center(
                  child: getPage(homeController.currentIndex.value),
                )),
          ],
        ),
      ),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            currentIndex: homeController.currentIndex.value,
            onTap: homeController.changePage,
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
          )),
    );
  }

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
