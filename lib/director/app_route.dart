import 'package:fintech_app/screens/home_screen/home_screen.dart';
import 'package:fintech_app/screens/insights_screen.dart';
import 'package:fintech_app/screens/invite_friends_screen.dart';
import 'package:fintech_app/screens/signup_screen.dart';
import 'package:fintech_app/screens/transfer_screen.dart';
import 'package:fintech_app/screens/welcome_screen.dart';
import 'package:fintech_app/screens/login_screen.dart';
import 'package:fintech_app/screens/onboarding_screen/onboarding_screen.dart';
import 'package:fintech_app/screens/card_screen.dart';
import 'package:flutter/material.dart';

class AppRoute {
  static const String welcomeScreen = '/welcome_screen';
  static const String onboardScreen = '/onboarding_screen';
  static const String loginScreen = '/login_screen';
  static const String signupScreen = '/signup_screen';
  static const String homeScreen = '/home_screen';
  static const String cardScreen = '/card_screen';
  static const String insightScreen = '/insight_screen';
  static const String transferScreen = '/transfer_screen';
  static const String inviteScreen = '/invite_screen';

  static Map<String, WidgetBuilder> route = {
    welcomeScreen: (context) => WelcomeScreen(),
    onboardScreen: (context) => OnboardingScreen(),
    loginScreen: (context) => LoginScreen(),
    signupScreen: (context) => SignupScreen(),
    homeScreen: (context) => HomeScreen(),
    cardScreen: (context) => CardScreen(),
    insightScreen: (context) => InsightScreen(),
    transferScreen: (context) => TransferScreen(),
    inviteScreen: (context) => InviteScreen(),
  };
}