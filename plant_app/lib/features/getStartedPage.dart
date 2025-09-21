import 'package:flutter/material.dart';
import 'package:plant_app/core/utils/color_utils.dart';
import 'package:plant_app/core/utils/string_utils.dart';

class Getstartedpage extends StatelessWidget {
  const Getstartedpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(getStartedPageString,style: TextStyle(color: primaryColor),)
        ],
      ),
    );
  }
}