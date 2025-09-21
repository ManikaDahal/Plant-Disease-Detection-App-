import 'package:flutter/material.dart';
import 'package:plant_app/features/1stpage.dart';
import 'package:plant_app/features/2ndPage.dart';
import 'package:plant_app/features/3rdPage.dart';

class Onboardingpage extends StatelessWidget {
  const Onboardingpage({super.key});

  @override
  Widget build(BuildContext context) {
    final _controller=PageController();
    return Scaffold(
body: PageView(
  children: [
    Page1(),
    Page2(),
    Page3(),
  ],
  
),
    );
  }
}