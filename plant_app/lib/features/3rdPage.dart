import 'package:flutter/material.dart';
import 'package:plant_app/core/utils/color_utils.dart';
import 'package:plant_app/core/utils/routeConst.dart';
import 'package:plant_app/core/utils/routeGenerator.dart';
import 'package:plant_app/core/utils/string_utils.dart';
import 'package:plant_app/widgets/customElevatedButton.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 40),
              Image.asset(
                "assets/images/plant1.png",
                height: MediaQuery.of(context).size.height * 0.4,
              ),
                            SizedBox(height: 40),

              Text(
                page3String,
                style: TextStyle(height: 1.3, fontSize: 20, color: primaryColor),

                textAlign: TextAlign.center,
              ),
              SizedBox(height: 180),
              Row(
                children: [
                  Expanded(
                    child: CustomElevatedButton(
                      child: Text(getStartedString),
                      onPressed: () {
                        RouteGenerator.navigateToPage(
                          context,
                          Routes.getStartedRoute,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
