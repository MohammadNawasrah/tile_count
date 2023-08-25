// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButtonIcon extends StatelessWidget {
  Icon icon;
  Color buttonColor;
  void Function()? onPress;
  CustomButtonIcon(
      {super.key,
      required this.icon,
      required this.onPress,
      required this.buttonColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: MaterialButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          padding: const EdgeInsets.symmetric(vertical: 12),
          color: buttonColor,
          onPressed: onPress,
          child: icon),
    );
  }
}
