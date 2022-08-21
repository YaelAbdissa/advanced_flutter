import 'package:flutter/material.dart';

import '../views/detailScreen/detail_screen.dart';
import '../views/forgotPasswordScreen/forgot_password_screen.dart';
import '../views/loginScreen/login_screen.dart';
import '../views/mainScreen/main_screen.dart';
import '../views/onBoardingScreen/on_boarding_screen.dart';
import '../views/registerScreen/register_screen.dart';
import '../views/splashScreen/splash_screen.dart';
import '../views/undefined_route_screen.dart';

class Routes {
  static const String splashPageRoute = "/";
  static const String onBoardingPageRoute = "/onBoardingPage";
  static const String loginPageRoute = "/loginPage";
  static const String registerPageRoute = "/registerPage";
  static const String homePageRoute = "/homePage";
  static const String detailPageRoute = "/detailPage";
  static const String forgotPasswordPageRoute = "/forgotPasswordPage";
}

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashPageRoute:
        return MaterialPageRoute(builder: (_) => const SplashScreen());

      case Routes.onBoardingPageRoute:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());

      case Routes.loginPageRoute:
        return MaterialPageRoute(builder: (_) => const LoginScreen());

      case Routes.registerPageRoute:
        return MaterialPageRoute(builder: (_) => const RegisterScreen());

      case Routes.homePageRoute:
        return MaterialPageRoute(builder: (_) => const MainScreen());

      case Routes.detailPageRoute:
        return MaterialPageRoute(builder: (_) => const DetailsScreen());

      case Routes.forgotPasswordPageRoute:
        return MaterialPageRoute(builder: (_) => const ForgotPasswordScreen());

      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(builder: (_) => const UndefinedRouteScreen());
  }
}
