import 'package:flutter/material.dart';
import 'package:nep_blog/presentation/signin_screen/sign_in_screen.dart';
import 'package:nep_blog/presentation/signup_screen/sign_up_screen.dart';

class Routes {
  static const String signupScreen = "SignUpScreen";
  static const String signinScreen = "SignInScreen";

  static String dialNumber = dialNumber;
}

class RouteGenerator {
  static Route<dynamic> getRoute(
    RouteSettings routeSettings,
  ) {
    switch (routeSettings.name) {
      case Routes.signupScreen:
        return MaterialPageRoute(builder: (_) => const SignUpScreen());
      case Routes.signinScreen:
        return MaterialPageRoute(builder: (_) => const SignInScreen());

      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text("no Route found"),
              ),
              body: const Center(child: Text("no route found")),
            ));
  }
}
