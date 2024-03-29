import 'dart:async';
import 'package:fintech_app/screens/authentication_page.dart';
import 'package:fintech_app/screens/welcome_screen.dart';
import 'package:fintech_app/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/scheduler.dart';
import 'package:fintech_app/theme/theme_helper.dart';
import 'package:fintech_app/routes/app_routes.dart';
import 'package:fintech_app/director/app_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/auth/authentication_bloc.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  ThemeHelper().changeTheme('primary');
  // runApp(MyApp());
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<AuthenticationBloc>(
          create: (BuildContext context) => AuthenticationBloc(),
        ),
        // Other providers...
      ],
      child: MyApp(),
    ),
  );
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
      routes: AppRoute.route,
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
    Timer(
        Duration(
            seconds: 3),
            () => Navigator.pushReplacement(context,
                    MaterialPageRoute(
                        // builder: (context) => OnboardingScreen()
                        builder: (context) => AuthenticationFlowScreen()
                  )
              )
    );
  }
  @override
  Widget build(BuildContext context) {
    return WelcomeScreen();
  }
}