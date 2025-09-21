import 'package:flutter/material.dart';
import 'package:plant_app/core/utils/routeConst.dart';
import 'package:plant_app/features/1stpage.dart';
import 'package:plant_app/features/2ndPage.dart';
import 'package:plant_app/features/3rdPage.dart';
import 'package:plant_app/features/getStartedPage.dart';
import 'package:plant_app/features/onboardingPage.dart';

class RouteGenerator {
  static navigateToPage(BuildContext context, String route,
      {dynamic arguments}) {
    Navigator.push(context,
        generateRoute(RouteSettings(name: route, arguments: arguments)));
  }

  static navigateToPageWithoutStack(BuildContext context, String route,
      {dynamic arguments}) {
    Navigator.pushAndRemoveUntil(
        context,
        generateRoute(RouteSettings(name: route, arguments: arguments)),
        (route) => false);
  }

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onbordingRoute:
        return MaterialPageRoute(builder: (_) => const Onboardingpage());
        case Routes.getStartedRoute:
        return MaterialPageRoute(builder: (_) => const Getstartedpage());
        case Routes.onboarding2Route:
        return MaterialPageRoute(builder: (_) => const Page2());
        case Routes.onboarding3Route:
        return MaterialPageRoute(builder: (_) => const Page3());
     
          
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
