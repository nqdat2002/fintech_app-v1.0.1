import 'package:fintech_app/screens/home_screen/home_screen.dart';
import 'package:fintech_app/screens/signup_screen.dart';
import 'package:fintech_app/screens/welcome_screen.dart';
import 'package:fintech_app/screens/login_screen.dart';
import 'package:fintech_app/screens/onboarding_screen/onboarding_screen.dart';
import 'package:fintech_app/screens/card_screen.dart';
import 'package:flutter/material.dart';

class AppRoute {
  static String welcomeScreen = '/welcome_screen';
  static String onboardScreen = '/onboarding_screen';
  static String loginScreen = '/login_screen';
  static String signupScreen = '/signup_screen';
  static String homeScreen = '/home_screen';
  static String cardScreen = '/card_screen';


  static Map<String, WidgetBuilder> route = {
    welcomeScreen: (context) => WelcomeScreen(),
    onboardScreen: (context) => OnboardingScreen(),
    loginScreen: (context) => LoginScreen(),
    signupScreen: (context) => SignupScreen(),
    homeScreen: (context) => HomeScreen(),
    cardScreen: (cardScreen) => CardScreen()
  };
}