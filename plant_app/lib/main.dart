import 'package:flutter/material.dart';
import 'package:plant_app/features/getStartedPage.dart';
import 'package:plant_app/features/homePage.dart';
import 'package:plant_app/features/splashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home:Splashscreen(),
    );
  }
}

