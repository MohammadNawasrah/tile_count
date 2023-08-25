import 'package:flutter/material.dart';

import '../container.dart';

class CustomTable extends StatelessWidget {
  const CustomTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: CustomContainer(text: "سعر البلاط"),
                ),
                Expanded(
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      border: Border.all(color: Colors.black, width: 1),
                    ),
                    child: CustomContainer(text: "عدد الغرف"),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      border: Border.all(color: Colors.black, width: 1),
                    ),
                    child: CustomContainer(text: "سعر النهائي"),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: CustomContainer(text: ""),
                ),
                Expanded(
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      border: Border.all(color: Colors.black, width: 1),
                    ),
                    child: CustomContainer(text: ""),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      border: Border.all(color: Colors.black, width: 1),
                    ),
                    child: CustomContainer(text: ""),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
