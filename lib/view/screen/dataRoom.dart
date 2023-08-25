// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DataRoom extends StatelessWidget {
  int homeId;
  DataRoom({super.key, required this.homeId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Text("$homeId"),
    ));
  }
}
