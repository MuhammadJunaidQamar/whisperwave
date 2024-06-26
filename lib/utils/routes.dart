import 'package:flutter/material.dart';
import 'package:whisperwave/views/screens/auth/forgot_password_screen.dart';
import 'package:whisperwave/views/screens/chat_screen.dart';
import 'package:whisperwave/views/screens/home_screen.dart';
import 'package:whisperwave/views/screens/auth/signin_screen.dart';
import 'package:whisperwave/views/screens/auth/signup_screen.dart';
import 'package:whisperwave/views/screens/welcome/splash_screen.dart';
import 'routes_name.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.splashScreen:
        return MaterialPageRoute(builder: (context) => const SplashScreen());

      case RouteName.signInScreen:
        return MaterialPageRoute(builder: (context) => const SignInScreen());

      case RouteName.homeScreen:
        return MaterialPageRoute(builder: (context) => const HomeScreen());

      case RouteName.chatScreen:
        Map<String, dynamic> arguments =
            settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
          builder: (context) => ChatScreen(
            name: arguments['name'],
            profileurl: arguments['profileurl'],
            username: arguments['username'],
          ),
        );

      case RouteName.forgotPasswordScreen:
        return MaterialPageRoute(
            builder: (context) => const ForgotPasswordScreen());

      case RouteName.signUpScreen:
        return MaterialPageRoute(builder: (context) => const SignUpScreen());

      default:
        return MaterialPageRoute(
          builder: ((context) {
            return const Scaffold(
              body: Center(
                child: Text('No route defined'),
              ),
            );
          }),
        );
    }
  }
}
