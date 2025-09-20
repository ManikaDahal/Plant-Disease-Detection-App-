import 'package:flutter/material.dart';
import 'package:plant_app/core/utils/color_utils.dart';
import 'package:plant_app/core/utils/routeConst.dart';
import 'package:plant_app/core/utils/routeGenerator.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3),(){
       RouteGenerator.navigateToPage(context, Routes.getStartedRoute);
    }
    );
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          color: primaryColor,
          "images/assets/plant.png"
        ),
      ),
    );
  }
}