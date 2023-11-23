import 'dart:async';

import 'package:fintech_app/core/app_export.dart';
import 'package:fintech_app/screens/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
// class Launcher extends StatelessWidget {
//   const Launcher({Key? key})
//       : super(
//     key: key,
//   );
//
//   @override
//   Widget build(BuildContext context) {
//     mediaQueryData = MediaQuery.of(context);
//
//     return SafeArea(
//       child: Scaffold(
//         body: SizedBox(
//           width: double.maxFinite,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               SizedBox(height: 5.v),
//               CustomImageView(
//                 imagePath: ImageConstant.imgGroup18304,
//                 height: 66.adaptSize,
//                 width: 66.adaptSize,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

class LauncherScreen extends StatefulWidget {
  LauncherScreen({Key? key}) : super(key: key);

  _LauncherScreen createState() => new _LauncherScreen();
}

class _LauncherScreen extends State<StatefulWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = new AnimationController(
      vsync: this,
      duration: new Duration(seconds: 5),
    );

    animationController.repeat();

    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) => HomeScreen()
            )
        )
    );
  }

  @override
  void dispose() {
    // Dispose of the AnimationController when the widget is disposed
    animationController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedBuilder(
                animation: animationController,
                builder: (_, child) {
                  return Transform.rotate(
                    angle: animationController.value * 2 * math.pi,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgGroup18304,
                      height: 66.adaptSize,
                      width: 66.adaptSize,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
