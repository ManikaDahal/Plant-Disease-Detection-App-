import 'package:flutter/material.dart';
import 'package:plant_app/core/utils/color_utils.dart';
import 'package:plant_app/core/utils/routeConst.dart';
import 'package:plant_app/core/utils/routeGenerator.dart';
import 'package:plant_app/core/utils/string_utils.dart';
import 'package:plant_app/widgets/customElevatedButton.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 50),
              Image.asset(
                "assets/images/handPlant.png",
                height: MediaQuery.of(context).size.height * 0.4,
              ),
              SizedBox(height: 40),

              Text(
                page1String,
                style: TextStyle(
                  height: 1.3,
                  fontSize: 30,
                  color: primaryColor,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 180),
              Row(
                children: [
                  CustomElevatedButton(
                    child: Text(skipString),

                    onPressed: () {
                      RouteGenerator.navigateToPage(
                        context,
                        Routes.getStartedRoute,
                      );
                    },
                  ),
                  SizedBox(width: 20),

                  Expanded(
                    child: CustomElevatedButton(
                      child: Text(nextString),
                      onPressed: () {
                        RouteGenerator.navigateToPage(
                          context,
                          Routes.onboarding2Route,
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
