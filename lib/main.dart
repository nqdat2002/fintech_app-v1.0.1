import 'dart:async';

import 'package:fintech_app/presentation/a_onboarding_1_three_screen/a_onboarding_1_three_screen.dart';
import 'package:fintech_app/presentation/welcome_screen/welcome_screen.dart';
import 'package:fintech_app/presentation/welcome_to_smartbank_screen/welcome_to_smartbank_screen.dart';
import 'package:fintech_app/screens/onboarding_screen/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/scheduler.dart';
import 'package:fintech_app/theme/theme_helper.dart';
import 'package:fintech_app/routes/app_routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  ///Please update theme as per your need if required.
  ThemeHelper().changeTheme('primary');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      title: 'fintech_app',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      // initialRoute: AppRoutes.aOnboarding1ThreeScreen,
      routes: AppRoutes.routes,
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) => OnboardingScreen()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return WelcomeScreen();
  }
}