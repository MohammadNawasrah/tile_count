// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tile_count/view/screen/dataRoom.dart';
import 'package:tile_count/view/widget/dialogs/addHomeDialog.dart';
import 'package:tile_count/view/widget/dialogs/deleteDialog.dart';
import '../../home/homeController.dart';
import '../../home/homeModel.dart';
import '../widget/customButton.dart';
import '../widget/customButtonIcon.dart';

class ListHomeShow extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const ListHomeShow({Key? key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    HomeController homeController = Get.put(HomeController());

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showAddHomeDialog();
        },
        backgroundColor: Colors.black,
        tooltip: "اضافة بيت جديد",
        child: const Icon(Icons.add),
      ),
      body: GetBuilder<HomeController>(
        builder: (controller) {
          return FutureBuilder<List<Home>>(
            future: controller.fetchHomesFromDatabase(),
            builder:
                (BuildContext context, AsyncSnapshot<List<Home>> snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (BuildContext context, int index) {
                    final home = snapshot.data![index];
                    return Column(
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 7,
                              child: CustomButton(
                                buttonText: "${home.nameHome}",
                                buttonColor: Colors.blue,
                                onPress: () {
                                  Get.off(DataRoom(homeId: home.homeId as int));
                                },
                              ),
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            Expanded(
                              flex: 3,
                              child: CustomButtonIcon(
                                icon: const Icon(Icons.delete_forever_outlined),
                                buttonColor: Colors.red,
                                onPress: () {
                                  showDeleteDialog(home.homeId!.toInt());
                                },
                              ),
                            )
                          ],
                        ),
                      ],
                    );
                  },
                );
              } else if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            },
          );
        },
      ),
    );
  }
}
