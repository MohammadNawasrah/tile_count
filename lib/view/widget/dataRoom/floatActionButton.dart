// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../customButton.dart';
import '../customTextForm.dart';

class FloatActionButtons extends StatelessWidget {
  const FloatActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        var textEditingController;
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
                  widthCutom: MediaQuery.of(context).size.width.toDouble(),
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
    );
  }
}
