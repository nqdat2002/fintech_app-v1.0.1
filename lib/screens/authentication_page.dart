import 'package:fintech_app/screens/home_screen.dart';
import 'package:fintech_app/screens/onboarding_screen.dart';
import 'package:fintech_app/screens/signup_screen.dart';
import 'package:fintech_app/screens/view_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthenticationFlowScreen extends StatefulWidget{
  AuthenticationFlowScreen({Key? key}) : super(key: key);
  @override
  _AuthenticationFlowScreen createState() => _AuthenticationFlowScreen();
}

class _AuthenticationFlowScreen extends State<AuthenticationFlowScreen> {
  static String id = 'main screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ViewScreen();
          } else {
            return OnboardingScreen();
          }
        },
      ),
    );
  }
}