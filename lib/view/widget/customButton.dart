// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  String buttonText;
  Color buttonColor;
  void Function()? onPress;
  CustomButton(
      {super.key,
      required this.buttonText,
      required this.onPress,
      required this.buttonColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: MaterialButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          padding: const EdgeInsets.symmetric(vertical: 12),
          color: buttonColor,
          onPressed: onPress,
          child: AutoSizeText(
            buttonText,
            maxLines: 1,
            style: const TextStyle(fontSize: 20),
          )),
    );
  }
}
