// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextFormAuth extends StatelessWidget {
  String hint;
  TextEditingController? textController;
  bool justnumber;
  void Function()? onTapIcon;
  CustomTextFormAuth(
      {super.key,
      required this.hint,
      required this.textController,
      required this.justnumber});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: TextFormField(
        keyboardType: justnumber ? TextInputType.number : TextInputType.text,
        style: const TextStyle(fontSize: 20),
        controller: textController,
        decoration: InputDecoration(
            hintText: hint,
            hintStyle: const TextStyle(fontSize: 15),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            contentPadding: const EdgeInsets.symmetric(horizontal: 25),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(15))),
      ),
    );
  }
}
